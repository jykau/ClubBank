package bank;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.SQLException;

//Transaction class having following function: Deposit,Withdraw and Enquiry

public class Transactiondb {
	
	// For Deposit

	double adddeposit(double amount1 ,String account)throws SQLException
	{	
	
		double total = 0,total1=0;
		String cid="";
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn2 = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "jyoti", "jyoti");
			System.out.println("Connected");
			Statement stm1=conn2.createStatement();
			ResultSet rs1=stm1.executeQuery("select Account_no from account");
			while(rs1.next())
			{
			String account1=rs1.getString(1);
			if(account1.equals(account))
			{
			Statement stmt3=conn2.createStatement();
			ResultSet rs=stmt3.executeQuery("select amount,customer_id from account where account_no="+account+"");
			while(rs.next())
			{
				total1=rs.getDouble(1);
				cid=rs.getString(2);
			}
			total=amount1+total1;
			PreparedStatement stmt2 = conn2.prepareStatement("insert into account(Account_no,Customer_id,Deposit,Withdraw,Amount)values(?,?,?,?,?)");
			System.out.println("Statement");
			stmt2.setString(1, account);
			stmt2.setString(2,cid);
			stmt2.setDouble(3, amount1);
			stmt2.setDouble(4, 0.0);
			stmt2.setDouble(5, total);
			int res=stmt2.executeUpdate();
			if (res!=0)
			{
				System.out.print("Scceesfully deposited");
			}
			else{
				System.out.print("Not Deposit");
			}
			conn2.close();
				}
			
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		finally
		{
			System.out.println("Finished"+total1+total);
		}
		return(total);
	}
	
	
	// for Withdraw
	double addwithdraw(double amount1 ,String account)
	{	
	
		double total = 0,total1=0;
		String cid="";
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn2 = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "jyoti", "jyoti");
			System.out.println("Connected");
			Statement stm1=conn2.createStatement();
			ResultSet rs1=stm1.executeQuery("select Account_no from account");
			while(rs1.next())
			{
			String account1=rs1.getString(1);
			if(account1.equals(account))
			{

			Statement stmt3=conn2.createStatement();
			ResultSet rs=stmt3.executeQuery("select amount,customer_id from account where account_no="+account+"");
			while(rs.next())
			{
				total1=rs.getDouble(1);
				cid=rs.getString(2);
			}
			total=total1-amount1;
			if(total>500.0)
			{
			PreparedStatement stmt2 = conn2.prepareStatement("UPDATE account SET Account_no=?,Customer_id=?,Deposit=?,Withdraw=?,Amount=? where account_no="+account+"");
			System.out.println("Statement");
			stmt2.setString(1, account);
			stmt2.setString(2,cid);
			stmt2.setDouble(3, 0.0);
			stmt2.setDouble(4, amount1);
			stmt2.setDouble(5, total);
			int res=stmt2.executeUpdate();
			if (res!=0)
			{
				System.out.print("Sccessful ");
			}
			else{
				System.out.print("No Withdraw");
			}
			}
			else{
				System.out.print("500 Rs. must have be in Account ");
			}
			conn2.close();
			}
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		finally
		{
			System.out.print("Finished"+total1+total);
		}
		return(total);
	}
		
	//For Enquiry
	
	double enquiry(String account)
		{	
		Connection conn2;
			double total = 0;
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				 conn2 = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "jyoti", "jyoti");
				System.out.println("Connected");
				Statement stm1=conn2.createStatement();
				ResultSet rs1=stm1.executeQuery("select Account_no from account");
				while(rs1.next())
				{
				String account1=rs1.getString(1);
				//Start of If loop
				if(account1.equals(account))
				{

				Statement stmt3=conn2.createStatement();
				ResultSet rs=stmt3.executeQuery("select amount from account where account_no="+account+"");
				while(rs.next())
				{
					total=rs.getDouble(1);
				}
				if (total!=0)
				{
					System.out.println("Scuccessful");
				}
				else{
					System.out.println("Invalid Account_no");
				}//End of if-else loop
				break;
				}//End of If loop
				}//End of While loop
				}//End of try block
			catch(Exception e)
			{
				e.printStackTrace();
			}
			finally
			{
				System.out.println("Finished"+total);
			}
			return(total);
	}
}
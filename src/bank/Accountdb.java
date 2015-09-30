package bank;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.SQLException;
	
public class Accountdb {

	String addAccount(Account account)throws Exception,SQLException
	{
		
		String str2="";
		String cid2=account.getAccount();
		double amount2=account.getAmount();
		try {
				if(amount2>500.0)
				{
					Class.forName("oracle.jdbc.driver.OracleDriver");
					Connection conn2 = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "jyoti", "jyoti");
					System.out.println("Connected");
					PreparedStatement stmt2 = conn2.prepareStatement("insert into Account(Account_no,Customer_id,Deposit,Withdraw,amount)values(Account_seq.nextval,?,?,?,?)");
					System.out.println("Statement");
					stmt2.setString(1, cid2);
					stmt2.setDouble(2,0.0);
					stmt2.setDouble(3,0.0);
					stmt2.setDouble(4, amount2);
					int res=stmt2.executeUpdate();
					if(res!=0)
					{
						Statement stmt3=conn2.createStatement();
						ResultSet rs1=stmt3.executeQuery("select Account_no from account");
						while(rs1.next())
						{
							str2=rs1.getString(1);
						}
						System.out.print("Account added succesfully");
					}
					else
					{
						System.out.print("Account not added");
					}
		
					stmt2.close();
					conn2.close();
				}
				else 
				{
					System.out.println("Account should be started above 500 Rs.");
				}
			}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		finally
		{
			System.out.print("Finished");
		}
		return str2;
	}
		
	String deleteaccount(String account)
	{
		String str="";
		try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection conn2 = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "jyoti", "jyoti");
				System.out.println("Connected 2");
				Statement stm1=conn2.createStatement();
				ResultSet rs1=stm1.executeQuery("select Account_no from account");
				while(rs1.next())
				{
					String account1=rs1.getString(1);
					if(account1.equals(account))
					{
						Statement stmt2=conn2.createStatement();
						System.out.println("Statement");
						stmt2.executeQuery("delete from account where account_no="+account+"");
						str="Successfully Account Deleted";
						stmt2.close();
						conn2.close();
					}
				}
			}
			catch(Exception e)
			{
				System.out.println("Error Occur");	
				e.printStackTrace();
			}
			finally
			{
				System.out.println("Finished");
			}
			return str;
	}
}
package bank;
import java.sql.*;
public class Customerdb {

	String addcustomer(Customer cust)
	{
		String str2="";
		String cname2=cust.getName();
		String gen2=cust.getGender();
		String dob2=cust.getDatebirth();
		String pass2=cust.getPassword();
		String address2=cust.getAddress();
		String city2=cust.getCity();
		String state2=cust.getState();
		String pin2=cust.getPin();
		String tel2=cust.getTelephone();
		String email2=cust.getEmail();
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn2 = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "jyoti", "jyoti");
			System.out.println("Connected");
			PreparedStatement stmt2 = conn2.prepareStatement("insert into Customer(cname,gender,dob,password,address,city,state,pin,telephone,email,customer_id)values(?,?,?,?,?,?,?,?,?,?,Customer_id.nextval)");
			System.out.println("Statement");
			stmt2.setString(1, cname2);
			stmt2.setString(2, gen2);
			stmt2.setString(3, dob2);
			stmt2.setString(4, pass2);
			stmt2.setString(5, address2);
			stmt2.setString(6, city2);
			stmt2.setString(7, state2);
			stmt2.setString(8, pin2);
			stmt2.setString(9, tel2);
			stmt2.setString(10, email2);
			//stmt2.setString(11,str2);
			int res=stmt2.executeUpdate();
			if (res!=0)
			{
				Statement stmt3=conn2.createStatement();
				ResultSet rs=stmt3.executeQuery("select Customer_Id from customer");
				while(rs.next())
				{
					str2=rs.getString(1);
				}
			
			}
			else{
				System.out.println("Not Added");
			}
			
		
		
			//rs.close();
			stmt2.close();
			conn2.close();
		} catch (Exception e) {
			e.printStackTrace();
			
		} finally {
			System.out.print("finish");
		} 
		return str2;
	}
	String editcustomer(Customer cust,String id)
	{
		String str="Succesfully edit";
		String cname2=cust.getName();
		String gen2=cust.getGender();
		String dob2=cust.getDatebirth();
		String address2=cust.getAddress();
		String city2=cust.getCity();
		String state2=cust.getState();
		String pin2=cust.getPin();
		String tel2=cust.getTelephone();
		String email2=cust.getEmail();
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn2 = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "jyoti", "jyoti");
			System.out.println("Connected");
			PreparedStatement stmt2 = conn2.prepareStatement("UPDATE customer SET cname=?,gender=?,dob=?,address=?,city=?,state=?,pin=?,telephone=?,email=? where customer_id="+id+"");
			System.out.println("Statement");
			stmt2.setString(1, cname2);
			stmt2.setString(2, gen2);
			stmt2.setString(3, dob2);
			stmt2.setString(4, address2);
			stmt2.setString(5, city2);
			stmt2.setString(6, state2);
			stmt2.setString(7, pin2);
			stmt2.setString(8, tel2);
			stmt2.setString(9, email2);
			stmt2.executeUpdate();
			stmt2.close();
			conn2.close();
		} catch (Exception e) {
			e.printStackTrace();
			
		} finally {
			System.out.print("finish");
		} 
		return str;
	}

}

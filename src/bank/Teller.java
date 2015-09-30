package bank;
import java.sql.SQLException;
public class Teller {

				public String calladdcustomer(Customer customer)
				{
					Customerdb customerdb1=new Customerdb();
					String str=customerdb1.addcustomer(customer);
					return str;
				}
				public String calladdaccount(Account account)throws SQLException,Exception
				{
					Accountdb accountdb1=new Accountdb();
					String str=accountdb1.addAccount(account);
					return str;
				
				}
				public double calladddeposit(double amount ,String account)throws SQLException
				{
					double value=0;
					Transactiondb transcation1=new Transactiondb();
					value=transcation1.adddeposit(amount,account);
					return value;
				}
				public double calladdwithdraw(double amount ,String account)
				{
					double value=0;
					Transactiondb transcation1=new Transactiondb();
					value=transcation1.addwithdraw(amount,account);
					return value;
				}
				
				public double callenquiry(String account)
				{
					double value=0;
					Transactiondb transcation1=new Transactiondb();
					value=transcation1.enquiry(account);
					return value;
				}
				public String calleditcustomer(Customer customer,String id)
				{
					Customerdb customerdb1=new Customerdb();
					String str=customerdb1.editcustomer(customer,id);
					return str;
				}
				public String calldeleteaccount(String account)
				{
					Accountdb accountdb1=new Accountdb();
					String str=accountdb1.deleteaccount(account);
					return str;
				}
}

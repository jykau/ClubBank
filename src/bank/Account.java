package bank;

public class Account {
 private String cid;
 private double amount; 
 public void setAccount(String cid)
 {
	 this.cid=cid;
 }
 public String getAccount()
 {
	 return(cid);
	 
 }
 public void setAmount(double amount)
 {
	 this.amount=amount;
	 
 }
 public double getAmount()
 {
	 return(amount);
 }
}

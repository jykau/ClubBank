package bank;

public class Customer {

	/* declare member variables */
	private String name;
	private String gender;
	private String dob;
	private String address;
	private String password;
	private String city;
	private String state;
	private String pin;
	private String telephone;
	private String email;

	public void setName(String name)
	{
		this.name=name;
		
	}
	public void setGender(String gender)
	{
		this.gender=gender;
	}
	public void setDatebirth(String dob)
	{
		this.dob=dob;
	}
	public void setPassword(String password)
	{
		this.password=password;
	}
	public void setAddress(String address)
	{
		this.address=address;
		
	}
	public void setCity(String city)
	{
		this.city=city;
	}
	public void setState(String state)
	{
		this.state=state;
	}
	public void setPin(String pin)
	{
		this.pin=pin;
	}
	public void setTelephone(String telephone)
	{
		this.telephone=telephone;
	}
	public void setEmail(String email)
	{
		this.email=email;
		
	}
	/**
	 * @return Returns the name
	 */
	public String getName()
	{
		return name;
	}
	/**
	 * @return Returns the gender
	 */
	public String getGender()
	{
		return gender;
	}
	/**
	 * @return Returns the address
	 */
	public String getAddress()
	{
		return address;
	}
	/**
	 * @return Returns the city.
	 */
	public String getCity()
	{
		return city;
	}
	/**
	 * @return Returns the state
	 */
	public String getState()
	{
		return state;
	}
	/**
	 * @return Returns the pin.
	 */
	public String getPin()
	{
		return pin;
	}
	/**
	 * @return Returns the Telephone
	 */
	public String getTelephone()
	{
		return telephone;
	}
	/**
	 * @return Returns the Password.
	 */
	public String getPassword()
	{
		return password;
	}
	/**
	 * @return Returns the email.
	 */
	public String getEmail()
	{
		return email;
	}

	/**
	 * @return Returns the DOB.
	 */
	public String getDatebirth()
	{
		return dob;
	}
}

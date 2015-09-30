/**Validation for Customer Details
 * For Numeric ,Blank,Specail charcaters
 * and entered data
 */
/*******************************************************************************
 * Function : check() *** **Description : validate customer details *****
 * **Inupt : None ****** **Called by : Main screen *******
 */
function check() 
{
	var msg ="";
	var nameflag,passs,addresss;
	/** **Validate for Customer Name** */

				nameflag = fnisblank(document.f1.name.value);
				if (nameflag == 0) {
					alert("Error:Name cannot be empty");
								document.f1.name.focus();
								document.f1.name.select();
						return false;						
				} 
				else {

				nameflag = fnisnumeric(document.f1.name.value);
					if (nameflag == 0) {
					alert("Error:Name cannot be Numeric");
					document.f1.name.focus();
					document.f1.name.select();
					return false;
			
			} else {
				nameflag = fnischar(document.f1.name.value);
				if (nameflag == 0 ) {
					alert("Error:Name must not contain specials charcters ");
					document.f1.name.focus();
					document.f1.name.select();
					return false;
				}
			}
		}

	/** *****Validate for Gender**** */
	if ((document.f1.r1[0].checked == false)
			&& (document.f1.r1[1].checked == false)) {
		alert("Invalid gender name");
		return false;
	}
	/** *****Validate for Password****************** */
	nameflag = fnisblank(document.f1.pass.value);
	{
		if (nameflag == 0) {
			alert("Error:Password cannot be embty");
			document.f1.pass.focus();
			document.f1.pass.select();
			return false;
		}
	}
	passs=document.f1.pass.value;
	if( passs.length<10 ||passs.length>15)
	{
		alert("Error:Password length should be upto 10 char(S)");
		document.f1.pass.focus();
		document.f1.pass.select();
		return false;
	}
	/** *****Validate for Address***** */
	nameflag = fnisblank(document.f1.address.value);
	{
		if (nameflag == 0) {
			alert("Error:Address cannot be embty");
			document.f1.address.focus();
			document.f1.address.select();
			return false;
		}
	}
	addresss = document.f1.address.value;
	if(addresss.length< 20) {
		alert("Error:Address length should be upto 20 char(s)");
		document.f1.address.focus();
		document.f1.address.select();
		return false;
	}
	/** ******Validate for City*********************** */
	nameflag = fnisblank(document.f1.city.value);
	if (nameflag == 0) {
		alert("Error:City cannot be empty");
		document.f1.city.focus();
		document.f1.city.select();
		return false;
		} 
		 else {
			nameflag = fnisnumeric(document.f1.city.value);
			if (nameflag == 0) {
				alert("Error:City cannot be Numeric");
				document.f1.city.focus();
				document.f1.city.select();
				return false;
			}
			else {
				nameflag = fnischar(document.f1.city.value);
				if (nameflag == 0 ) {
					alert("Error:City must not contains specials charcters ");
					document.f1.city.focus();
					document.f1.city.select();
					return false;
				}
			}
		}
	
	/** ******Validate for State***** */
	
	nameflag = fnisblank(document.f1.state.value);
	if (nameflag == 0) 
	{
		alert("Error:State cannot be empty");
		document.f1.state.focus();
		document.f1.state.select();
		return false;
	}
	
		else 
		{
			nameflag = fnisnumeric(document.f1.state.value);
			if (nameflag == 0) 
			{
				alert("Error:State cannot be Numeric");
				document.f1.state.focus();
				document.f1.state.select();
				return false;
			
			} 
			else 
			{
				nameflag = fnischar(document.f1.state.value);
				if (nameflag == 0 ) 
				{
					alert("Error:state must not contains specials charcters ");
					document.f1.state.focus();
					document.f1.state.select();
					return false;
				}
			}
		}
	
	/** **********Validate for Pin************ */
	
	nameflag = fnisblank(document.f1.pin.value);
	if (nameflag == 0) 
	{
		alert("Error:Pin cannot be empty");
		document.f1.pin.focus();
		document.f1.pin.select();
		return false;
		}
	else 
	{
			nameflag = fnisalpha(document.f1.pin.value);
			if (nameflag == 0) {
				alert("Error:Pin must contain numbers ");
				document.f1.pin.focus();
				document.f1.pin.select();
				return false;

		} else {
			nameflag = fnischar(document.f1.pin.value);
			if (nameflag == 0) {
				alert("Error:Pin must not contains specials charcters ");
				document.f1.pin.focus();
				document.f1.pin.select();
				return false;
			}
		}
	}
	/** *********Validate for Telephone Number******** */

	nameflag = fnisalpha(document.f1.telno.value);
	if (nameflag == 0) {
		alert("Error:Telephone number must be Numeric");
		document.f1.telno.focus();
		document.f1.telno.select();
		return false;
	} else {
		nameflag = fnischar(document.f1.telno.value);
		if (nameflag == 0 ){
			alert("Error:Telephone number must not contain specials charcters ");
			document.f1.telno.focus();
			document.f1.telno.select();
			return false;
		} else {
			nameflag = fnisblank(document.f1.telno.value);
			if (nameflag == 0) {
				alert("Error:Telephone number cannot be empty");
				document.f1.telno.focus();
				document.f1.telno.select();
				return false;
			}
			else
				{
				nameflag=document.f1.telno.value;
				if(nameflag.length>10)
					{
					alert("Error:Telephone number digits should be in 10");
					document.f1.telno.focus();
					document.f1.telno.select();
					return false;
					}
				}
			
		}
	}
	/** *********Validate for email******* */

	nameflag = fnisblank(document.f1.email.value);
	if (nameflag == 0) {
		alert("Error:Email cannot be empty");
		document.f1.email.focus();
		document.f1.email.select();
		return false;
	} 
	else {
		nameflag = fnisvalidemail(document.f1.email.value);
		if (nameflag == 0) 
		{
			alert("Error:Invlid Email");
			document.f1.email.focus();
			document.f1.email.select();
			return false;
		}
	}
	if (msg.length == 0) 
	{
		alert("You Have successfully entered Details,Thanku Suscriber");
		return true;
	}
	alert(msg);
}
/** ***Function : For Alphabets******* */
function fnisalpha(customer) {
	var i;
	var len = customer.length;
	var cchar;
	for (i = 0; i < len; i++) {
		cchar = customer.charCodeAt(i);
		if ((cchar >= 65  && cchar <= 90) || (cchar >= 97 && cchar <= 122)) {
			return (0);
		}
	}
	return(-1);
}
/** ***End of Alpha function****** */
/** **************************** */
/** ***Function : For Numeric ***************** */
function fnisnumeric(customer) {
	var i;
	var len = customer.length;
	var cchar;
	for (i = 0; i < len; i++) {
		cchar = customer.charCodeAt(i);
		if (cchar >= 48 && cchar <= 57) {
			return (0);
		}
	}
	return (-1);
}
/** ****End of Numeric function***** */
/** ******************************* */
/** ***Function : For Blank Data ** */
function fnisblank(customer) {
	if(customer=="")
		return(0);
	else
		return(-1);
}
/** *****End of Blank function** */
/** *************************** */
/** ****** Function : For Special charcters ** */
function fnischar(customer) {
	var cchar;
	var i,cchar1;
	var len = customer.length;

	for (i = 0; i < len; i++) 
	{
		cchar = customer.charAt(i);
		if ((fnisnumeric(cchar) != 0) && (fnisalpha(cchar) != 0)
				&& (fnisblank(cchar) != 0))
		{
			char=customer.charCodeAt(i);
			if (cchar1==46) 
			{
				return(0);
			} 
		}
	}
	return (-1);
	
	
}
/** ******End of char function******** */
function fnisvalidemail(customer) 
{

	var atpos = customer.indexOf("@");
	 var dotpos = customer.lastIndexOf(".");
	   if (atpos < 1 || ( dotpos - atpos < 2 )) 
	   {
	       return (0);
	   }
	   return(-1);
}
	
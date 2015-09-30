/**
 * 
 */
function check()
{		
	var name=Hello(document.f1.t1.value);
	if(name==0)
	{	
		var nam=document.f1.t1.value;
		var char=nam.charAt(1);
		alert("hello"+char);
		return true;
		}
	else {
		alert("wrong entered");
		document.f1.t1.select();
		document.f1.t1.focus();
		return false;
	}

}
function Hello(customer)
{
	if(customer=="jyoti")
		return(0);
	else
		return(-1);
	
}
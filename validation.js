// JavaScript Document

function validate_required(field,alerttxt)
{
with (field)
  {
  if (value==null||value=="")
	{
	alert(alerttxt);return false;
	}
  else
	{
	return true;
	}
  }
}

function confirm_password(field1,field2,alerttxt)
{
		if(field1.value!=field2.value)
		{
			alert(alerttxt);return false;
		}
		
			else
			{
				return true;
			}
	}
	
function validate_form(thisform)
{
with (thisform)
  {
	  
	if (validate_required(email,"Email must be filled out!")==false)
	{
		thisform.email.focus();
		return false;}
  }

  {
  if (validate_required(firstname,"First name must be filled out!")==false)
	{
		thisform.firstname.focus();
		return false;}
  }
  
  {
  if (validate_required(lastname,"Last name must be filled out!")==false)
	{
		thisform.lastname.focus();
		return false;}
  }
  
  {
  if (validate_required(address1,"Address must be filled out!")==false)
	{
		thisform.address1.focus();
		return false;}
  }
  {
  if (validate_required(city,"City name must be filled out!")==false)
	{
		thisform.city.focus();
		return false;}
  }
  
  {
  if (validate_required(post,"Post code must be filled out!")==false)
	{
		thisform.post.focus();
		return false;}
  }
  
  {
  if (validate_required(userid,"User ID must be filled out!")==false)
	{
		thisform.userid.focus();
		return false;}
  }
  
  {
  if (validate_required(pass,"Password must be filled out!")==false)
	{
		thisform.pass.focus();
		return false;}
  }
{
  if (validate_required(pass2,"Please confirm your password!")==false)
	{
		thisform.pass2.focus();
		return false;}
  }
  {
	  if (confirm_password(pass,pass2,"Passwords must match!")==false)
	  {
		  thisform.pass.focus();
		  return false;}
		  }
}

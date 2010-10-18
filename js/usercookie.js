<!-- This script is designed to store the username in a cookie - Chris Dymond

expireDate = new Date
expireDate.setMonth(expireDate.getMonth()+6)

username = ""

if (document.cookie != "") {

	
	userName = document.cookie.split("=")[1]

}

function setCookie() {

	userName = document.myForm.nameField.value
	document.cookie = "userName="+userName+";expires=" + expireDate.toGMTString()

}

// End of the script -->
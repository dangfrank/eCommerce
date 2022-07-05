/**
 * 
 */
 function validate(){
	var username = document.getElementById("username").value;
	var password = document.getElementById("password").value;
	
	
	if(username == ""){
		alert("Please enter your Username");
		return false;
	}
	if(password == ""){
		alert("Please enter your Password");
		return false;
	}
	return true;
}
function validateCart(){
	var name = document.getElementById("name").value;
	var address = document.getElementById("address").value;
	
	if(name == ""){
		alert("Please enter your name");
		return false;
	}
	if(address == ""){
		alert("Please enter your address");
		return false;
	}
	
	return true;
}
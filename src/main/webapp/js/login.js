$(document).ready(function(){
$("#login-button").click(function(){
var email = $("#login-text").val();
var password = $("#login-pass").val();
alert("email :"+ email);
alert("password :"+ password);
// Checking for blank fields.
if( email =='' || password ==''){
alert("Please fill all fields...!!!!!!");
}else {
	alert("ajax call");
	$.ajax({
        type : "POST",
        url : 'rest/user',
        dataType :"json",
        contentType: "application/json",
        data : JSON.stringify({id:201,name:"xyz",emailId:"cisco.com",password:"changed-pwd",joinDate:null,age:45,state:"AZ"}),
        success : function(result) {
          alert(result.success); // result is an object which is created from the returned JSON
},
});
	window.location = "index2.jsp";

}
});
});
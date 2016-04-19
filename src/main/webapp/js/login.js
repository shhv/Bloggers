$(document).ready(function(){
$("#login-button").click(function(){
var email = $("#login-text").val();
var password = $("#login-pass").val();
// Checking for blank fields.
if( email =='' || password ==''){
alert("Please fill all fields...!!!!!!");
}else {
	$.ajax({
        type : "GET",
        url : 'blog/user/check/email',
        dataType :"json",
        contentType: "application/json",
        success : function(data, status) {
        	console.log(data);
        	
},
});
	window.location = "index2.jsp";

}
});
});
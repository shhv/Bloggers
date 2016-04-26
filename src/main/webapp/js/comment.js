function executeComment() {
	var myParam = location.search.split('id=')[1];
	var data = formData.getAll();
	alert(myParam);
	alert($('#comment-form').serialize());
	var param =  $("#comment").html();
	alert(param);
	alert($("#comment").text());
	alert($("#comment").val());
	if (param == '') {
		alert("Cannot post empty query...!!!!!!");
	} else {
		$.ajax({
			type : "POST",
			url : 'blog/user/comment',
			dataType : "json",
			contentType : "application/json",
			data : JSON.stringify({
				title : titleHdr,
				comment : query
			}),
			success : handleData(status),
			error : function(xhr, status) {
				console.log(status);
				alert(status);
			},
		});
	}
	function handleData(status) {
		console.log("data: " + status);
		alert("Success");
	}
}

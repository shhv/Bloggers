function execute() {
	var query = $("#comment").val();
	var titleHdr = $("#title").text();
	alert(query);
	alert(titleHdr);
	if (query == '' || titleHdr == '') {
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
		// $.ajax({
		// type : "GET",
		// url : 'blog/user/create/query',
		// dataType : "json",
		// contentType : "application/json",
		// success : function(data, status) {
		// console.log(data);
		//			
		// },
		// });
	}
}

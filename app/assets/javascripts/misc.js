$(document).on("ready page:load", function(){
	$(".js-students-filter").on("ajax:success", function(e,data,status,xhr){
		alert(data.message);
		alert(status);
		alert(e);
	});
});

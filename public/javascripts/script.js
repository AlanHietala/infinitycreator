$(document).ready(function(){
	$(".expand").click(function(){
		$(this).parents(".unit").find(".unitdetails").toggle("scale");
		return false;
	});
});

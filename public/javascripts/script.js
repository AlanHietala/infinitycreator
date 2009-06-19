$(document).ready(function(){
	var clickareas = $(".unitheader");
	clickareas.bind("click",function(e){
		$(e.target).parents("actions")
		var unit = $(this).parents(".unit");
		var unitdetails = unit.find(".unitdetails");
		var imagehandle = unit.find(".unitheader .expand img");
		unitdetails.toggle("scale");
				
		var img = "";
		
		if(imagehandle.attr("src").indexOf("minus")>0){
			img = "/images/plushover.png";

		}else{
			img ="/images/minushover.png";

		}
		imagehandle.attr("src",img);
			
	
	
		return false;
	});
	$(".actions").bind("click",function(e){
	
		e.stopPropagation;
	});
	clickareas.bind("mouseover",function(e){
		var img = "";
		var unit = $(this).parents(".unit");
			if(unit.find(".unitdetails").css("display")=="none"){
				img = "/images/plushover.png";
				
			}else{
				img = "/images/minushover.png";
				
			}
			unit.find(".unitheader .expand img").attr("src",img);
			unit.find(".unitheader").addClass("active");
	});
	clickareas.bind("mouseout",function(e){
		var img = ""
		var unit = $(this).parents(".unit");
					
		var imagehandle = unit.find(".unitheader .expand img");

		if(imagehandle.attr("src").indexOf("minus")>0){
			img = "/images/minus.png";

		}else{
			img ="/images/plus.png";

		}

			imagehandle.attr("src",img);
			unit.find(".unitheader").removeClass("active");
	});
	
});


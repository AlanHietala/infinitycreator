jQuery(document).ready(function(){
	var clickareas = jQuery(".unitheader");
	clickareas.bind("click",function(e){
		jQuery(e.target).parents("actions")
		var unit = jQuery(this).parents(".unit");
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
	jQuery(".actions").bind("click",function(e){
	
		e.stopPropagation;
	});
	clickareas.bind("mouseover",function(e){
		var img = "";
		var unit = jQuery(this).parents(".unit");
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
		var unit = jQuery(this).parents(".unit");
					
		var imagehandle = unit.find(".unitheader .expand img");

		if(imagehandle.attr("src").indexOf("minus")>0){
			img = "/images/minus.png";

		}else{
			img ="/images/plus.png";

		}

			imagehandle.attr("src",img);
			unit.find(".unitheader").removeClass("active");
	});
	jQuery(".addunit").click(function(){
		var cid = jQuery(this).parent().find("input").val();
		jQuery("#combat_group_unit_combat_group_id").val(cid);
		// move the div
		var moveItem = jQuery("#addunitdiv").clone();
		jQuery("#addunitdiv").remove();
		moveItem.insertAfter(jQuery(this).parent().parent());
		jQuery("#closeadd").click(function(){
			jQuery("#addunitdiv").slideUp();

			return false;
		});
		// show the div
		jQuery("#addunitdiv").slideDown();
		return false;
	});
	
	
	jQuery("#togglebbcode").click(function(){
		
		jQuery("#bbcode").toggle();
		// select all in the box
		jQuery(".sharing textarea").select();
		return false;
	});
	jQuery("#.sharing textarea").click(function(){
		
		jQuery(this).select();
		return false;
	});
	
});


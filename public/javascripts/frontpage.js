jQuery(document).ready(function(){
	jQuery(".tab").click(function(){
		jQuery(".active-tab").removeClass("active-tab").addClass("inactive-tab");
	
		jQuery(this).addClass("active-tab").removeClass("inactive-tab");
		jQuery(".toggle-section").css("display","none");
		// toggle the right section
		if(jQuery(this).hasClass("plan-tab")){
			jQuery("#plan").toggle();
		}else if(jQuery(this).hasClass("print-tab")){
			jQuery("#print").toggle();
			
		}else{
			jQuery("#play").toggle();
		}
	});
	
	
});
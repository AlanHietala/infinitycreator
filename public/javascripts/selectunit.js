$(document).ready(function(){
	alert("loading");
	$("#unit_id").change(function(){
		
		//getUnitOptions
	});
	
	$("#combat_group_unit_unit_option_id").change(function(){
		var selectedUnit = $("#unit_id").val();
		getUnitOptionDetails(selectedUnit,renderUnitOptionDetails,new Object());
	});
	
	
});

function renderUnitOptions(xhr,args){
	
	
	
}

function renderUnitOptionDetails(xhr,args){
	alert("redering unit option details");

}

function getUnitOptions(unitId,successHandler,args){
	$.ajax({

	type: "POST",

	url: "/combat_group_units/getunitoptions",

	data: "{'unit_id':'"+unitId.toString()+"'}",
       
              
   
	contentType: "application/json; charset=utf-8", 

	dataType: "json",

	success: function(xhr, status) {

        if(successHandler!=null)
			successHandler(xhr,args);
        
	},

	error: function(xhr, status, error) {

	var err = JSON.parse(xhr.responseText);
	


	}

	});
}

function getUnitOptionDetails(unitOptionId,successHandler,args){
	$.ajax({

	type: "POST",

	url: "/combat_group_units/getunitoptiondetails",

	data: "{'unit_option_id':'"+unitOptionId.toString()+"'}",
       
              
   
	contentType: "application/json; charset=utf-8", 

	dataType: "json",

	success: function(xhr, status) {

        if(successHandler!=null)
			successHandler(xhr,args);
        
	},

	error: function(xhr, status, error) {

	var err = JSON.parse(xhr.responseText);
	


	}

	});
}
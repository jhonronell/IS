var jlib = jblib || {};

jlib.util = function(){
	function _createInputElements(element){
		
		var element = element;
		
		if(type === 1){
			return "<input type='text' class='form-control input-md' " +
					"placeholder='Medium'>";
			
		} else if (type === 2){
			
			var arrayValues = "";
			for(value in element.value){
				
				arrayValues = array.values + 
				"<option value=\"" + value.split(":")[0] + "\">" +
				value.split(":")[1]
				"</option>"
				
			}

			return "<select class=\"" + element.cssClass +  "\" " +
					"id=\"" + element.id + "\">" + arrayValues;
					"</select>";
		} 
		
	}
	return {
		createInputElements : _createInputElements
	}
}()
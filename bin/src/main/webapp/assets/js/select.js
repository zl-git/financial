$.fn.editable = function(config)  
{    
    $(this).each(function(i,t){ 
        $(t).change(function(){  
		    
				var me=$(this);  
				me.find('.customval').remove();  
				if('其他' == me.val().substring(0,2))  
				{  
					var ed = $("<input type=\"text\" class=\"form-control\" />");  
					me.after(ed).hide();  
					ed.blur(function(){  
						var v=ed.val();  
						if(null === v ||  v.length ==0){  
							ed.remove();me.val(null).show();  
						}else{  
							me.append("<option value=\"其他-"+v+"\" class=\"customval\" selected>"+"其他-"+v+"</option>").show();  
							ed.remove();  
						}  
					}).focus();  
				}
		   
        })  
    });  
}
// JavaScript Document
$(".check").click(function(){
	$(".modal").css("display","block");
	$("#bgDiv").css("display","block");
	});
$(".close").click(function(){
	$(".modal").css("display","none");
	$("#bgDiv").css("display","none");
	});
$(".buttonclose").click(function(){
	$(".modal").css("display","none");
	$("#bgDiv").css("display","none");
	});
$(".clicksuccess").click(function(){
	$(this).attr("disabled","disabled");
	$(this).text("已完成");
	});
$(".search").click(function(){
	$(".searched").css("display","block");
	});
	
var co = document.getElementById('makeupCo');
var cose = document.getElementById('makeupCoSe');
co.value=cose.value;
	function changeF()  
	{  
	   co.value=  cose.options[cose.selectedIndex].value; 
	   if(cose.options[cose.selectedIndex].value=="其他"){
		   co.disabled=false;
		   co.focus();
		   }else{
			 co.disabled=true; 
			   } 
	}
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
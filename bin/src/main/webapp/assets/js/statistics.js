$(function(){
	var stat = $("input[name='statType']:checked").val();
	if(stat == "classification"){
		$('.statistic-classify').css("display","block");
		$('.searched').css("display","none");
		$('.statistics-contrast').css("display","none");
	}
	if(stat == "count"){
		$('.statistic-classify').css("display","none");
		$('.searched').css("display","block");
		$('.statistics-contrast').css("display","none");
	}
	if(stat == "contrast"){
		$('.statistic-classify').css("display","none");
		$('.searched').css("display","none");
		$('.statistics-contrast').css("display","block");
	}

	$(".search").click(function(){
		if(stat=="classification"){
			$('.statistic-classify').css("display","block");
			$('.searched').css("display","none");
			$('.statistics-contrast').css("display","none");
		}
		if(stat=="count"){
			$('.statistic-classify').css("display","none");
			$('.searched').css("display","block");
			$('.statistics-contrast').css("display","none");
		}
		if(stat=="contrast"){
			$('.statistic-classify').css("display","none");
			$('.searched').css("display","none");
			$('.statistics-contrast').css("display","block");
		}
	});
	
});
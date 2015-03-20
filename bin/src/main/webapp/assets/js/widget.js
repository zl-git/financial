// JavaScript Document
var widget = {
	load : function(path,from,to) {		
		    var chart ;
			chart = echarts.init(document.getElementById("charts"));
/*			var data = {"传统媒体":[100,200,300],"微博":[200, 400, 100]};
			
			option.series[0].data = data.传统媒体;
			option.series[1].data = data.微博;
			chart.setOption(option);
	} 
*/     //     chart.hideLoading();		 			
	option = { 
			    tooltip : {
			        trigger: 'axis'
			    },
			    legend: {
			        data:['传统媒体'],
			        x:'center',
			        y:'bottom'
			    },
			    toolbox: {
			        show : true,
			        feature : {
			            mark : {show: true},
			            dataView : {show: true, readOnly: false},
			            magicType : {show: true, type: ['line', 'bar']},
			            restore : {show: true},
			            saveAsImage : {show: true}
			        }
			    },
			    calculable : true,
			    xAxis : [
			        {
			            type : 'category',
			            data : ['2010','2011','2012']
			        }
			    ],
			    yAxis : [
			        {
			            type : 'value'
			        }
			    ],
			    series : [
			        {
			            name:'',
			            type:'bar',
			            data:[200,100,300],
			            markPoint : {
			                data : [
			                    {type : 'max', name: '最大值'},
			                    {type : 'min', name: '最小值'}
			                ]
			            },
			            markLine : {
			                data : [
			                    {type : 'average', name: '平均值'}
			                ]
			            }
			        }
			    ]
			};
	   chart.setOption(option);						
	}

/*			chart.showLoading({
				text: "数据正在努力加载.....",
				effect : "bubble",
				textStyle: {
					fontSize:20
				}
			});		
		    
			$.ajax({
		 		type:'POST',
		 		url: path,
		 		data:{
		 			"from" : from,
		 			"to" : to
		 		},
		 		timeout : 120 * 1000,
		 		dataType:'json',
		 		success:function(out) {			 			
		 			chart.hideLoading();		 			
		 			option = { 
		 				    tooltip : {
		 				        trigger: 'axis'
		 				    },
		 				    legend: {
		 				        data:['传统媒体','微博'],
		 				        x:'center',
		 				        y:'bottom'
		 				    },
		 				    toolbox: {
		 				        show : true,
		 				        feature : {
		 				            mark : {show: true},
		 				            dataView : {show: true, readOnly: false},
		 				            magicType : {show: true, type: ['line', 'bar']},
		 				            restore : {show: true},
		 				            saveAsImage : {show: true}
		 				        }
		 				    },
		 				    calculable : true,
		 				    xAxis : [
		 				        {
		 				            type : 'category',
		 				            data : []
		 				        }
		 				    ],
		 				    yAxis : [
		 				        {
		 				            type : 'value'
		 				        }
		 				    ],
		 				    series : [
		 				        {
		 				            name:'',
		 				            type:'bar',
		 				            data:out.传统媒体,
		 				            markPoint : {
		 				                data : [
		 				                    {type : 'max', name: '最大值'},
		 				                    {type : 'min', name: '最小值'}
		 				                ]
		 				            },
		 				            markLine : {
		 				                data : [
		 				                    {type : 'average', name: '平均值'}
		 				                ]
		 				            }
		 				        }
		 				    ]
		 				};
					   chart.setOption(option);						
		 		},
		 		error: function(XMLHttpRequest, textStatus, errorThrown) {
		 			chart.hideLoading();
		 			console.log(XMLHttpRequest + errorThrown);
		 			$("#charts").html(" loading error! ");
		 		}
			 });
//		}		
	}

*/
};
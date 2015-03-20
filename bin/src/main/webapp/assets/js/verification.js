// JavaScript Document
/* login verfication */
$(function(){
$('.login').click(function(){
	if($('#username').val() == ""|| $('#password').val() == ""){
	    $('.alert-success').css("display","block");
		$('.alert-success').text("用户名或者密码不得为空！");
		 setTimeout("clean()",3000);
         return false;
		}
	if($('#password').val().length < 6){
		 $('.alert-success').css("display","block");
		 $('.alert-success').text("密码不得小于六位！");
		 setTimeout("clean()",3000);
         return false;
		}
	});


/* add and modify verfication */

$('.success').click(function(){	
	if($('.caseName').val() == ""){
		 $('.alert-success').css("display","block");
		 $('.alert-success').text("集资项目名称不能为空  ");
		 setTimeout("clean()",3000);
         return false;
	}
	if($('.orgName').val() == ""){
		 $('.alert-success').css("display","block");
		 $('.alert-success').text("集资单位名称（个人姓名）不能为空  ");
		 setTimeout("clean()",3000);
        return false;
	}
	if($('.raiseAmount').val() == ""){
		 $('.alert-success').css("display","block");
		 $('.alert-success').text("集资金额不能为空  ");
		 setTimeout("clean()",3000);
       return false;
	}
	if($('.raiseNum').val() == ""){
		 $('.alert-success').css("display","block");
		 $('.alert-success').text("参与集资人数不能为空  ");
		 setTimeout("clean()",3000);
      return false;
	}
	if($('.raiseNum').val() < 1){
		 $('.alert-success').css("display","block");
		 $('.alert-success').text("参与集资人数至少为1人  ");
		 setTimeout("clean()",3000);
     return false;
	}
	if($('.caseTime').val() == ""){
		 $('.alert-success').css("display","block");
		 $('.alert-success').text("发案时间不能为空  ");
		 setTimeout("clean()",3000);
     return false;
	}
	if($('.chargeName').val() == ""){
		 $('.alert-success').css("display","block");
		 $('.alert-success').text("负责人不能为空  ");
		 setTimeout("clean()",3000);
    return false;
	}
	if($('.informant').val() == ""){
		 $('.alert-success').css("display","block");
		 $('.alert-success').text("填报人不能为空  ");
		 setTimeout("clean()",3000);
   return false;
	}
	if($('.formDate').val() == ""){
		 $('.alert-success').css("display","block");
		 $('.alert-success').text("填报日期不能为空  ");
		 setTimeout("clean()",3000);
  return false;
	}
	if($('.province').val() == "" || $('.province').val() == "请选择"){
		 $('.alert-success').css("display","block");
		 $('.alert-success').text("地区不能为空  ");
		 setTimeout("clean()",3000);
 return false;
	}
});

/* newest */
$('.button-success').click(function(){	
	if($('.caseCondition').val() == ""){
		 $('.alert-success').css("display","block");
		 $('.alert-success').text("案情不能为空  ");
		 setTimeout("clean()",3000);
         return false;
	}
	if($('.crimePopele').val() == ""){
		 $('.alert-success').css("display","block");
		 $('.alert-success').text("涉案人员不能为空  ");
		 setTimeout("clean()",3000);
         return false;
	}
	if($('.caseProgress').val() == ""){
		 $('.alert-success').css("display","block");
		 $('.alert-success').text("起诉和审判工作进展不能为空  ");
		 setTimeout("clean()",3000);
         return false;
	}
	if($('.moneyRecovered').val() == ""){
		 $('.alert-success').css("display","block");
		 $('.alert-success').text("资产追缴不能为空  ");
		 setTimeout("clean()",3000);
         return false;
	}
	if($('.moneyReturn').val() == ""){
		 $('.alert-success').css("display","block");
		 $('.alert-success').text("善后清退不能为空  ");
		 setTimeout("clean()",3000);
         return false;
	}
	if($('.involvSafety').val() == ""){
		 $('.alert-success').css("display","block");
		 $('.alert-success').text("涉访维稳不能为空  ");
		 setTimeout("clean()",3000);
         return false;
	}
	if($('.problem').val() == ""){
		 $('.alert-success').css("display","block");
		 $('.alert-success').text("当前存在的主要问题不能为空  ");
		 setTimeout("clean()",3000);
         return false;
	}
	if($('.workProgress').val() == ""){
		 $('.alert-success').css("display","block");
		 $('.alert-success').text("与前期处置工作有何明显进展不能为空  ");
		 setTimeout("clean()",3000);
         return false;
	}
	if($('.informant').val() == ""){
		 $('.alert-success').css("display","block");
		 $('.alert-success').text("填报人不能为空  ");
		 setTimeout("clean()",3000);
         return false;
	}
	if($('.phoneNum').val() == ""){
		 $('.alert-success').css("display","block");
		 $('.alert-success').text("电话不能为空  ");
		 setTimeout("clean()",3000);
         return false;
	}
	if($('.formDate').val() == ""){
		 $('.alert-success').css("display","block");
		 $('.alert-success').text("填报日期不能为空  ");
		 setTimeout("clean()",3000);
         return false;
	}
});
});
/* common */
function clean(){
    $('.alert-success').css("display","none");
}




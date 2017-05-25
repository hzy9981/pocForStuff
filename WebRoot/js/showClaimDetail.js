

function GetQueryString(name)
{
     var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
     var r = window.location.search.substr(1).match(reg);
     if(r!=null)return  unescape(r[2]); return null;
}
/**
 * status=0 未进行任何操作的理赔单
 * status=1 待定状态的理赔单
 * status=2 审核拒绝的理赔单
 * status=3 审核通过的理赔单
 * status=4 归档的理赔单
 */
$(function(){
	selectClaim();
    $("#btn_Pass").click(function(){
		status=3;
		changeStatus(status);
	});
    $("#btn_Refuse").click(function(){
    	status=2;
    	changeStatus(status);
	});
     $("#btn_Wait").click(function(){
    	status=1;
    	changeStatus(status);
	});
});

var selectClaim = function(){
	var caseid = GetQueryString("caseid");
	var action = GetQueryString("action");
	if(caseid !=null && caseid.toString().length>=1){
		$.ajax({
			url:"/pocForStuff/auditor/showClaim",
			type:"POST",
			data:{
				caseid:caseid
			},
			dataType:"json",
			success:function(data){
				if(data!=""){
					if(action=="show"){
					var claim = data[0];
					$("#caseid").attr("readonly","readonly").val(claim.caseid);
					$("#a1id").attr("readonly","readonly").val(claim.a1id);
					$("#a2id").attr("readonly","readonly").val(claim.a2id);
					$("#recognizee").attr("readonly","readonly").val(claim.recognizee);
					$("#plateNumber").attr("readonly","readonly").val(claim.plateNumber);
					$("#caseTime").attr("readonly","readonly").val(claim.caseTime);
					$("#casePlace").attr("readonly","readonly").val(claim.casePlace);
					$("#reportPerson").attr("readonly","readonly").val(claim.reportPerson);
					$("#reportTime").attr("readonly","readonly").val(claim.reportTime);
					$("#reportPersonMobile").attr("readonly","readonly").val(claim.reportPersonMobile);
					$("#driver").attr("readonly","readonly").val(claim.driver);
					$("#driverMobile").attr("readonly","readonly").val(claim.driverMobile);
					$("#caseDescribe").attr("readonly","readonly").val(claim.caseDescribe);
					$("#reason").attr("readonly","readonly").val(claim.reason);
					$("#btn_Pass").hide()
					$("#btn_Refuse").hide()
					$("#btn_Wait").hide()
					}
					if(action=="change"){
						var claim = data[0];
						$("#caseid").attr("readonly","readonly").val(claim.caseid);
						$("#a1id").attr("readonly","readonly").val(claim.a1id);
						$("#a2id").attr("readonly","readonly").val(claim.a2id);
						$("#recognizee").attr("readonly","readonly").val(claim.recognizee);
						$("#plateNumber").attr("readonly","readonly").val(claim.plateNumber);
						$("#caseTime").attr("readonly","readonly").val(claim.caseTime);
						$("#casePlace").attr("readonly","readonly").val(claim.casePlace);
						$("#reportPerson").attr("readonly","readonly").val(claim.reportPerson);
						$("#reportTime").attr("readonly","readonly").val(claim.reportTime);
						$("#reportPersonMobile").attr("readonly","readonly").val(claim.reportPersonMobile);
						$("#driver").attr("readonly","readonly").val(claim.driver);
						$("#driverMobile").attr("readonly","readonly").val(claim.driverMobile);
						$("#caseDescribe").attr("readonly","readonly").val(claim.caseDescribe);
						$("#reason").val(claim.reason);
					}
				}
			}
		});
	}
}

var changeStatus = function(status){
	$.ajax({
		url:"/pocForStuff/auditor/updateClaim",
		type:"POST",
		data:{
			reason:$("#reason").val(),
			caseid:$("#caseid").val(),
			status:status
		},
		success:function(){
			alert("已经成功修改了理赔单的状态,请返回主界面进行查看");
		}
	})
}



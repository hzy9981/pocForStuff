function GetQueryString(name)
{
     var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
     var r = window.location.search.substr(1).match(reg);
     if(r!=null)return  unescape(r[2]); return null;
}

$(function(){
	selectClaim();
});

var selectClaim = function(){
	var caseid = GetQueryString("caseid");
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
					var claim = data[0];
					$("#caseid").attr("readonly","readonly").val(claim.caseid);
					$("#a1id").val(claim.a1id);
					$("#a2id").val(claim.a2id);
					$("#recognizee").val(claim.recognizee);
					$("#plateNumber").val(claim.plateNumber);
					$("#caseTime").val(claim.caseTime);
					$("#casePlace").val(claim.casePlace);
					$("#reportPerson").val(claim.reportPerson);
					$("#reportTime").val(claim.reportTime);
					$("#reportPersonMobile").val(claim.reportPersonMobile);
					$("#driver").val(claim.driver);
					$("#driverMobile").val(claim.driverMobile);
					$("#caseDescribe").val(claim.caseDescribe);
					$("#reason").val(claim.reason);
				}
			}
		});
	}
}



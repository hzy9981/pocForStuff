function GetQueryString(name)
{
     var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
     var r = window.location.search.substr(1).match(reg);
     if(r!=null)return  unescape(r[2]); return null;
}

$(function(){
	var asid = GetQueryString("asid");
	if(asid !=null && asid.toString().length>=1){
		$.ajax({
			url:"/pocForStuff/assessor/showAssessed",
			type:"POST",
			data:{
				asid:asid
			},
			dataType:"json",
			success:function(data){
				 if(data!=""){
					 var obj=data[0];
					 $("#plateNumber").val(obj.plateNumber).attr("readonly","readonly");
					 $("#applyUser").val(obj.applyUser).attr("readonly","readonly");
					 $("#applyUserPhone").val(obj.applyUserPhone).attr("readonly","readonly");
					 $("#sum").val(obj.sum).attr("readonly","readonly");
					 $(".div_textarea").find("textarea").val(obj.describe);
					 var photo = obj.photo.split(",");
					 for(var i=0;i<=5;i++){
						 $("#preview"+i).attr("src",photo[i]);
					 }
				 }
			}
		})
	}
})
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
					 
				 }
			}
		})
	}
})
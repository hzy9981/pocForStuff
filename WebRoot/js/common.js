var loginedId;
var actor;

$(function(){
	common_getLoginedId();
});
//判断是否有登陆的cookie,有的话就正常运行,没有的话就跳转至登录界面
function common_getLoginedId(){
	loginedId = $.cookie("loginedId");
	actor = $.cookie("actor");
	if(loginedId==null){
		location.href = "../../pocForStuff/pages/login.jsp";
	}else{
		$("#loginedId").html(" "+loginedId+" ");
		if(actor=="assessor"){
			$("#assessorMenu").show();
			$("#assessorToolMenu").show();
		}else if(actor=="auditor"){
			$("#auditorMenu").show();
			$("#auditorToolMenu").show();
			
		}
	}
} 

/*function changeArrow(){
	$("#auditorMenu").click();
	$("#assessorMenu").click();
}*/
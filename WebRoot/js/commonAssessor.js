//在页面加载的时候进行判断actor是不是定损员
/*window.onload = function(){
	if($.cookie("actor")!="assessor"){
		alert("请使用定损员账号登录");
		location.href = "../../pocForStuff/pages/login.jsp";
	}
}*/
$(function(){
	checkActor();
});

function checkActor(){
	if($.cookie("actor")!="assessor"){
		alert("请使用定损员账号登录");
		location.href = "../../pocForStuff/pages/login.jsp";
	}
	//
	$("#assessorMenu").click();
}
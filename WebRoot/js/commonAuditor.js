$(function(){
	checkActor();
})

//在页面加载的时候进行判断actor是不是审核员
function checkActor(){
	if($.cookie("actor")!="auditor"){
		alert("请使用审核员账号登录");
		location.href = "../../pocForStuff/pages/login.jsp";
	}
	$("#auditorMenu").click();
}

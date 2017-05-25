$(function(){
	showUnauditedClaim();
	$("#btn_Search").click(function(){
		searchClaim();
	});
});

//查看为审批的理赔单
var showUnauditedClaim =function(){
	 $.ajax({
		 url:"/pocForStuff/auditor/showUnauditedClaim",
		 type:"POST",
		 dataType:"json",
		 success:function(data){
			 if(data!=""){
				 var tableInfo ="";
				 var i=1;
					$.each(data,function(i,claim){
						i++;
						tableInfo +="<tr><td>" +i+"</td>"+
						"<td>"+claim['caseid'] +"</td>"+
						"<td>"+claim['plateNumber'] +"</td>"+
						"<td>"+claim['recognizee'] +"</td>"+
						"<td>"+claim['caseTime'] +"</td>"+
						"<td>"+claim['status'] +"</td>"+
						"<td><a onclick='showClaimDetail(this)' abc='"+claim['caseid']+"'>详 情</a></td></tr>";
					});
					$("#hiddenresult").html(tableInfo);
					$("#Pagination").pagination(data.length, {
						prev_text: "« 上一页",
		                next_text: "下一页 »",
						num_edge_entries: 1, //边缘页数
						num_display_entries: 4, //主体页数
						callback: pageselectCallback,
						items_per_page:10,//每页显示10项
					});
			 }
		 } 
	 })
}

var pageselectCallback =function(page_index, jq){
	var new_content = "";
	for(var i=(page_index*10);i>=(page_index*10)&&i<(page_index+1)*10;i++){
		new_content+="<tr>"+$("#hiddenresult tr:eq("+i+")").html()+"</tr>";
	}
	$("#tbody_claimSchedule").empty().html(new_content); //装载对应分页的内容
	return false;
};

var searchClaim =function(){
	var searchCondition = $("#searchCondition").val().trim();
	var searchContent = $("#searchContent").val().trim();
	if(searchContent==""||searchContent==null){
		showUnauditedClaim();
	}
	else{
	 $.ajax({
		 url:"/pocForStuff/auditor/showUnauditedClaim",
		 type:"POST",
		 data:searchCondition+"="+searchContent,
		 dataType:"json",
		 success:function(data){
			 if(data==""){
				 $("#tbody_claimSchedule").empty()
			 }
			 if(data!=""){
				 var tableInfo ="";
				 var i=1;
					$.each(data,function(i,Claim){
						i++;
						tableInfo +="<tr><td>" +i+"</td>"+
						"<td>"+Claim['id'] +"</td>"+
						"<td>"+Claim['recognizee'] +"</td>"+
						"<td>"+Claim['plateNumber'] +"</td>"+
						"<td>"+Claim['createTime'] +"</td>"+
						"<td><a onclick='showClaimDetail(this)' abc='"+Claim['caseid']+"'>详 情</a></td></tr>";
					});
					$("#hiddenresult").html(tableInfo);
					$("#Pagination").pagination(data.length, {
						prev_text: "« 上一页",
		                next_text: "下一页 »",
						num_edge_entries: 1, //边缘页数
						num_display_entries: 4, //主体页数
						callback: pageselectCallback,
						items_per_page:10,//每页显示10项
					});
			 }
		 } 
	 })
	}
}

var showClaimDetail = function(a){
	var caseid = $("a").attr("abc");
	window.open("/pocForStuff/pages/auditor/showClaimDetail.jsp?caseid="+caseid+"&action=change");
}

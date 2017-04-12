var imgCount=0;
//展示上传的图片的缩略图
function viewImage(file){
    //var preview = document.getElementById('preview');
    if(file.files && file.files[0]){
        //火狐下
    	$("#preview").attr("display","block");
        //preview.src = window.URL.createObjectURL(file.files[0]);
        $("#preview").attr("src",window.URL.createObjectURL(file.files[0]));
    }else{
        //ie下，使用滤镜
        file.select();
        var imgSrc = document.selection.createRange().text;
        var localImagId = document.getElementById("localImag"); 
        //必须设置初始大小 
        localImagId.style.width = "250px"; 
        localImagId.style.height = "200px"; 
        try{ 
        localImagId.style.filter="progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
        locem("DXImageTransform.Microsoft.AlphaImageLoader").src = imgSrc; 
        }catch(e){ 
        alert("您上传的图片格式不正确，请重新选择!"); 
        return false; 
        } 
        preview.style.display = 'none'; 
        document.selection.empty(); 
        } 
        return true; 
}
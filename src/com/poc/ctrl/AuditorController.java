package com.poc.ctrl;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import com.poc.db.model.Claim;
import com.poc.service.AuditorService;
import com.poc.util.JSONUtils;

@Controller
public class AuditorController {
	
	private static final Logger	LOGGER	= LoggerFactory.getLogger(AssessorController.class);
	
	@Autowired
	private AuditorService auditorService;
	
	 @ResponseBody
	 @RequestMapping(value="/auditor/showUnauditedClaim", produces = "text/html;charset=UTF-8",method = RequestMethod.POST)
	 public String showUnauditedClaim(Claim claim,HttpServletRequest request){
		 return JSONUtils.toJSONString(auditorService.showUnauditedClaim(claim, request));
	 }
	 
	 @ResponseBody
	 @RequestMapping(value="/auditor/changeAuditedClaim", produces = "text/html;charset=UTF-8",method = RequestMethod.POST)
	 public String changeAuditedClaim(Claim claim,HttpServletRequest request){
		 return JSONUtils.toJSONString(auditorService.changeAuditedClaim(claim, request));
	 }
	 
	 @ResponseBody
	 @RequestMapping(value="/auditor/showAuditedClaim", produces = "text/html;charset=UTF-8",method = RequestMethod.POST)
	 public String showAuditedClaim(Claim claim,HttpServletRequest request){
		 return JSONUtils.toJSONString(auditorService.showAuditedClaim(claim, request));
	 }
	 
	 @ResponseBody
	 @RequestMapping(value="/auditor/showClaim", produces = "text/html;charset=UTF-8",method = RequestMethod.POST)
	 public String showClaim(Claim claim){
		 return JSONUtils.toJSONString(auditorService.showClaim(claim));
	 }
	 
	@ResponseBody
	@RequestMapping(value="/auditor/updateClaim", produces = "text/html;charset=UTF-8",method = RequestMethod.POST)
	public void updateClaim(Claim claim){
		auditorService.updateClaim(claim);
   }  
	
	
	 @RequestMapping(value="/auditor/upload",produces = "text/html;charset=UTF-8",method = RequestMethod.POST)  
	 public String upload(HttpServletRequest request,HttpServletResponse response) throws IllegalStateException, IOException {  
	        //创建一个通用的多部分解析器  
	        CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(request.getSession().getServletContext());  
	        //判断 request 是否有文件上传,即多部分请求  
	        if(multipartResolver.isMultipart(request)){  
	            //转换成多部分request    
	            MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest)request;  
	            //取得request中的所有文件名  
	            Iterator<String> iter = multiRequest.getFileNames();  
	            while(iter.hasNext()){  
	                //记录上传过程起始时的时间，用来计算上传时间  
	                int pre = (int) System.currentTimeMillis();  
	                //取得上传文件  
	                MultipartFile file = multiRequest.getFile(iter.next());  
	                if(file != null){  
	                    //取得当前上传文件的文件名称  
	                    String myFileName = file.getOriginalFilename();  
	                    //如果名称不为“”,说明该文件存在，否则说明该文件不存在  
	                    if(myFileName.trim() !=""){  
	                        System.out.println(myFileName);  
	                        //重命名上传后的文件名  
	                        String fileName = "demoUpload" + file.getOriginalFilename();  
	                        //定义上传路径  
	                        String path = "D:/upload/" + fileName;  
	                        File localFile = new File(path);  
	                        file.transferTo(localFile);  
	                    }  
	                }  
	                //记录上传该文件后的时间  
	                int finaltime = (int) System.currentTimeMillis();  
	                System.out.println(finaltime - pre);  
	            }  
	              
	        }  
	        return "/success";  
	    }  
}

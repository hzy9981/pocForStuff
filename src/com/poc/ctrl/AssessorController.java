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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import com.poc.db.model.Assess;
import com.poc.service.AssessorService;
import com.poc.util.JSONUtils;

@Controller
public class AssessorController{
	private static final Logger	LOGGER	= LoggerFactory.getLogger(AssessorController.class);
	@Autowired
	private AssessorService assessorService;
	
	 @ResponseBody
	 @RequestMapping(value="/assessor/showAssessed", produces = "text/html;charset=UTF-8",method = RequestMethod.POST)
	public String showAssessedByAssess(Assess assess,HttpServletRequest request){
		 return JSONUtils.toJSONString(assessorService.showAssessedByAssess(assess,request));
	 }
	 

	 @RequestMapping(value="/assessor/insertAssess",produces = "text/html;charset=UTF-8",method = RequestMethod.POST)  
	 public void upload(@RequestParam("files") MultipartFile[] files,Assess assess) throws IllegalStateException, IOException{
		 assessorService.insertAssess(files, assess);
	    }  
}

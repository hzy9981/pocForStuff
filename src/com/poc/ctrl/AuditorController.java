package com.poc.ctrl;

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

import com.poc.db.model.Assess;
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
}

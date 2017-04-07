package com.poc.ctrl;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.poc.service.AssessorService;
import com.poc.service.AuditorService;

@Controller
public class LoginController {
	@Autowired
	private AssessorService assessorService;
	
	@Autowired
	private AuditorService auditorService;
	
	@ResponseBody
	@RequestMapping(value="/login", produces = "text/html;charset=UTF-8",method = RequestMethod.POST)
	public String stuffLogin(String id,String password,String actor,HttpServletResponse response){
		if("assessor".equals(actor)){
			return assessorService.assessorLogin(id,password,response);
		}
		else if("auditor".equals(actor)){
			return auditorService.auditorLogin(id, password, response);
		}else{			
			return "fail";
		}
	}  
}

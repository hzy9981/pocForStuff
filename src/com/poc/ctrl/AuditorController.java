package com.poc.ctrl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
	@Autowired
	private AuditorService auditorService;
	
	
}

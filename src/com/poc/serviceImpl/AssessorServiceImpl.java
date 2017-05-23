package com.poc.serviceImpl;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.poc.db.dao.AssessMapper;
import com.poc.db.dao.AssessorMapper;
import com.poc.db.model.Assess;
import com.poc.service.AssessorService;
import com.poc.util.CookieUtil;
import com.poc.util.EncoderByMd5;
import com.poc.util.JSONUtils;
@Service
@Transactional
public class AssessorServiceImpl implements AssessorService{
	@Autowired
private AssessorMapper assessorMapper;
	@Autowired
	private AssessMapper assessMapper;
	@Override
	public String assessorLogin(String id, String password,HttpServletResponse response) {
		String md5Password = "";
		try {
			md5Password = EncoderByMd5.EncoderByMd5(password);
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(!JSONUtils.toJSONString(assessorMapper.assessorLogin(id,md5Password)).equals("[null]")){	
			CookieUtil.addCookie(response,"loginedId",assessorMapper.assessorLogin(id,md5Password).getAsorid(),3600);
			CookieUtil.addCookie(response,"actor","assessor",3600);
			return "success";
		}else{
			return "fail";
		}
	}
	
	@Override
	public List<Assess> showAssessedByAssess(Assess assess,HttpServletRequest request) {
		assess.setAssessor(CookieUtil.getCookieByName(request, "loginedId").getValue().split(",")[0]);
		//CookieUtil.getCookieByName(request, "loginedId")
		return assessMapper.showAssess(assess);  
	}

}

package com.poc.serviceImpl;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.poc.db.dao.AuditorMapper;
import com.poc.service.AuditorService;
import com.poc.util.CookieUtil;
import com.poc.util.EncoderByMd5;
import com.poc.util.JSONUtils;
@Service
@Transactional
public class AuditorServiceImpl implements AuditorService{
@Autowired
private AuditorMapper auditorMapper;

public String auditorLogin(String auid,String aupassword,HttpServletResponse response){
	String md5Password = "";
	try {
		md5Password = EncoderByMd5.EncoderByMd5(aupassword);
	} catch (NoSuchAlgorithmException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (UnsupportedEncodingException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	if(!JSONUtils.toJSONString(auditorMapper.auditorLogin(auid,md5Password)).equals("[null]")){	
		CookieUtil.addCookie(response,"loginedId",auditorMapper.auditorLogin(auid,md5Password).getAuid(),3600);
		CookieUtil.addCookie(response,"actor","auditor",3600);
		return "success";
	}else{
		return "fail";
	}
}
}

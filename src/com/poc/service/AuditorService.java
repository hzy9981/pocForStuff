package com.poc.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.poc.db.model.Claim;

public interface AuditorService {
	
  String auditorLogin(String auid,String password,HttpServletResponse response);
 
  List<Claim> showUnauditedClaim(Claim claim,HttpServletRequest request);

  List<Claim> changeAuditedClaim(Claim claim,HttpServletRequest request);
  
  List<Claim> showAuditedClaim(Claim claim,HttpServletRequest request);
  
  List<Claim> showClaim(Claim claim);
  
  void updateClaim(Claim claim);
  
  void uploadFile(HttpServletRequest request,HttpServletResponse response);
  }

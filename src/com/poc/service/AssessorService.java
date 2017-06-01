package com.poc.service;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.multipart.MultipartFile;

import com.poc.db.model.Assess;

public interface AssessorService {
 String assessorLogin(String id,String password,HttpServletResponse response);

 List<Assess> showAssessedByAssess(Assess assess,HttpServletRequest request);
 
 void insertAssess(MultipartFile[] files,Assess assess) throws IllegalStateException, IOException;
}

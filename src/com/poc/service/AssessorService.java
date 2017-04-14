package com.poc.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.poc.db.model.Assess;

public interface AssessorService {
 String assessorLogin(String id,String password,HttpServletResponse response);

 List<Assess> showAssessedByAssess(HttpServletRequest request);
}

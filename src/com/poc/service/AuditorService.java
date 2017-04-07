package com.poc.service;

import javax.servlet.http.HttpServletResponse;

public interface AuditorService {
 public String auditorLogin(String auid,String password,HttpServletResponse response);
}

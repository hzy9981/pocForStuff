package com.poc.serviceImpl;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

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

	@Override
	public void insertAssess(MultipartFile[] files, Assess assess) throws IllegalStateException, IOException{
		String photoPath = "";
		 for(int i = 0;i<files.length-1;i++){
			 int pre = (int) System.currentTimeMillis();
			 if(files[i]!=null){
				 //取得当前上传文件的文件名称  
                 String myFileName = files[i].getOriginalFilename();  
                 //如果名称不为“”,说明该文件存在，否则说明该文件不存在  
                 if(myFileName.trim() !=""){  
                    // System.out.println(myFileName);  
                     //重命名上传后的文件名  
                     String fileName = files[i].getOriginalFilename();  
                     //定义上传路径  
                     String path = "D:/upload/" + fileName;
                     photoPath += ","+path;
                     File localFile = new File(path);  
                     files[i].transferTo(localFile);  
                 }  
			 }
			 int finaltime = (int) System.currentTimeMillis();
			// System.out.println(finaltime - pre); 
		 }
		 Date date=new Date();
		 SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMddHHmmss");
		 assess.setAsid(sdf.format(date));
		 assess.setPhoto(photoPath);
		 assessMapper.insertSelective(assess);
		 //System.out.println(files.length);
	}

}

package com.edu.util;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Component("fileUtils")
public class FileUtils {

	private static final String filePath = "C:\\upload";

	public List<Map<String, Object>> parseInsertFileInfo(int parentSeq,
		MultipartHttpServletRequest multipartHttpServletRequest) throws Exception{
		
		
		
		return null;
	}
	
}

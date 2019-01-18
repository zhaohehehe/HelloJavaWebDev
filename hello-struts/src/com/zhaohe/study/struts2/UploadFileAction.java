package com.zhaohe.study.struts2;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class UploadFileAction extends ActionSupport {
	private String username;
	private File file;
	//获取文件名，形式固定 nameFileName
	private String fileFileName;
	//获取文件内容类型，形式固定 nameContentType
	private String fileContentType;
	@Override
	public String execute() throws Exception {
		//String root = ServletActionContext.getRequest().getRealPath("/upload");
		String root="D:/test";
		InputStream is=new FileInputStream(file);
		System.out.println("fileFileName="+this.fileFileName);
		File destFile=new File(root,fileFileName);
		OutputStream os=new FileOutputStream(destFile);
		
		byte[] buffer=new byte[400];
		int len=0;
		while(-1!=(len=(is.read(buffer)))){
			os.write(buffer,0,len);
		}
		is.close();
		os.close();
		return SUCCESS;
	}
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}
	public File getFile() {
		return file;
	}
	public void setFile(File file) {
		this.file = file;
	}
	public String getFileFileName() {
		return fileFileName;
	}
	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}
	public String getFileContentType() {
		return fileContentType;
	}
	public void setFileContentType(String fileContentType) {
		this.fileContentType = fileContentType;
	}
	
}

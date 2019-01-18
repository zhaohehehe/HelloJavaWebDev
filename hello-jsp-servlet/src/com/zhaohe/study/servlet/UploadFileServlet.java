package com.zhaohe.study.servlet;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;


public class UploadFileServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		/**
		 * 1.��������ʵ��
		 */
		DiskFileItemFactory factory=new DiskFileItemFactory();
		/**
		 * 2.��������
		 */
		//�ϴ�λ��
		String path="/home/zhaohe/test";
		System.out.println(path);
		//��ʱ�ļ����λ�ã�����ļ�����Ĭ��10K������ڴ��̣���Ϊ��ʱ�ļ��洢����������ڴ���ʱ�洢
		factory.setRepository(new File(path));
		//�Զ����С��1M
		factory.setSizeThreshold(1024*1024);
		/**
		 * 3.�ϴ��ļ�����һ�δ��Զ��
		 */
		ServletFileUpload upload=new ServletFileUpload(factory);
		try {
			//FileItem����һ���ļ�(type="file")���߱���Ŀ(type="text")
			List<FileItem> list=upload.parseRequest(req);
			for(FileItem item:list){
				String name=item.getFieldName();
				//�ж����ļ������ı���
				if(item.isFormField()){
					String value=item.getString();
					System.out.println(name+"="+value);
					req.setAttribute(name, value);
				}else{
					//�ļ�·�������Ǵ����������������ļ�·��ֻ�����ļ����� 
					String value=item.getName();
					int start=value.lastIndexOf("\\");
					String fileName=value.substring(start+1);
					req.setAttribute(name, fileName);
					//ʹ��write
					//item.write(new File(path,fileName));
					//�ֶ��ϴ�
					OutputStream os=new FileOutputStream(new File(path,fileName));
					InputStream is=item.getInputStream();
					byte[] buffer=new byte[400];
					int len=0;
					while(-1!=(len=(is.read(buffer)))){
						//os.write(buffer);
						os.write(buffer,0,len);
					}
					is.close();
					os.close();
				}
			}
		} catch (FileUploadException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		req.getRequestDispatcher("uploadFileServletResult.jsp").forward(req, resp);
		
	}
}

















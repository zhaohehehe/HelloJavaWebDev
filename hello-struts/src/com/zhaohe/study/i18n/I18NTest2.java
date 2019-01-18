package com.zhaohe.study.i18n;

import java.util.Locale;
import java.util.ResourceBundle;

public class I18NTest2 {

	public static void main(String[] args) {
		System.out.println(Locale.getDefault());
		ResourceBundle bundle =ResourceBundle.getBundle("study");
		ResourceBundle bundle2 =ResourceBundle.getBundle("study",Locale.US);
		
		ResourceBundle bundle3 =ResourceBundle.getBundle("studydefault",Locale.US);
		String value =bundle.getString("hello");
		String value2=bundle2.getString("hello");
		String value3=bundle3.getString("hello");
		
		System.out.println(value);
		System.out.println(value2);
		System.out.println(value3);
	}
}

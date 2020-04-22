package com.jsp.action;

import java.util.HashMap;
import java.util.Map;

public class ApplicationContext {
	private static Map<String, Object> applicatiContext = new HashMap<String, Object>();
	
	private ApplicationContext() {}
	
	public static Map<String,Object> getApplicationContext(){
		return applicatiContext;
	}
}

package com.jsp.listener;

import java.lang.reflect.Method;
import java.util.Enumeration;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import com.jsp.action.ApplicationContext;


@WebListener
public class InitListener implements ServletContextListener {
    public void contextDestroyed(ServletContextEvent sce)  { 
    	
    }

    public void contextInitialized(ServletContextEvent sce)  {
    	
    	Map<String,Object> applicationContext =ApplicationContext.getApplicationContext();
    	
    	ServletContext ctx = sce.getServletContext();
    	//1.인스턴스 생성
    	//해당 param의 목록(web.xml의param-name)을 추출한다.
    	Enumeration<String> paramNames = ctx.getInitParameterNames();
    	
    	while(paramNames.hasMoreElements()) {
    		
    		String paramName =paramNames.nextElement();
    		String classType = ctx.getInitParameter(paramName);
    		
    		try {
				applicationContext.put(paramName, Class.forName(classType).newInstance());
			} catch (InstantiationException | IllegalAccessException | ClassNotFoundException e) {
				e.printStackTrace();
			}
    	}
    	
    	paramNames = ctx.getInitParameterNames();
    	while(paramNames.hasMoreElements()) {
    		String paranmName =paramNames.nextElement();
    		String classType = ctx.getInitParameter(paranmName);
    		
    		try {
				Class <?> cls =Class.forName(classType);
				
				Method[] methods =cls.getMethods();
				
				for(Method method : methods) {
					System.out.println(method.getName());
					
					String setInstanceName =((method.getName().replace("set", "")).charAt(0)+"").toLowerCase()+method.getName().substring(4);
					//컨테이너에서 해당 값을 찾는다. 실행 / 넘긴다.
					method.invoke(applicationContext.get(paranmName),applicationContext.get(setInstanceName));
					
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
    	}
    	System.out.println(applicationContext);
    }
	
}

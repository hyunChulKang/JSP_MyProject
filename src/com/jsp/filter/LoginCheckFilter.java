package com.jsp.filter;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jsp.dto.MemberVO;
import com.jsp.utils.ViewResolver;

public class LoginCheckFilter implements Filter{

	List<String> exURLs = new ArrayList<String>();
	@Override
	public void destroy() {
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException{
		HttpServletRequest httpReq = (HttpServletRequest) request;
		HttpServletResponse httResp = (HttpServletResponse) response;
		
		
		//제한할  URL 확인
		String reqUrl=httpReq.getRequestURI();
		if(excludeCheck(reqUrl)) {
			chain.doFilter(request, response);
			return;
		}
		
		HttpSession session =httpReq.getSession();
		
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		
		if(loginUser==null) {
			String url="commons/loginCheck";
			ViewResolver.view(httpReq, httResp, url);
		}else {
			chain.doFilter(request, response);
		}
		
		
		
	}

	@Override
	public void init(FilterConfig fConfig) throws ServletException {
		String excludeURLNames= fConfig.getInitParameter("exclude");
		StringTokenizer st = new StringTokenizer(excludeURLNames,",");
		while(st.hasMoreTokens()) {
			exURLs.add(st.nextToken());
		}
	}
		private boolean excludeCheck(String url) {
			for(String exURL:exURLs) {
				if(url.contains(exURL)) {
					return true;
				}
			}
			return false;
		}

}

package com.lh.app.signIn.etc;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

public class CustomLoginSuccessHandler implements AuthenticationSuccessHandler {

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		CustomUserDetails userDetails = (CustomUserDetails) principal;
		String auth = userDetails.getAUTHOR();
		
		System.out.println("SuccessHandler, 로그인, 사용자 권한 : " + auth);
		
		//admin이면 관리자 메인 페이지로 간다.
		if (auth.equals("ADMIN")) {
			response.sendRedirect("admin/adminPage");
		//그 이외는 전부 홈으로
		} else {
			response.sendRedirect("/app");
		}
		
		
	}
	
}

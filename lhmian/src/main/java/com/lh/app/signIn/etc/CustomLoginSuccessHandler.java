package com.lh.app.signIn.etc;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.WebAttributes;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.savedrequest.HttpSessionRequestCache;
import org.springframework.security.web.savedrequest.RequestCache;
import org.springframework.security.web.savedrequest.SavedRequest;

public class CustomLoginSuccessHandler implements AuthenticationSuccessHandler {

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		
		//로그인을 하는 과정에서 한번만에 로그인에 성공할 수도 있지만,
		//실패를 한 후 로그인에 성공하는 경우도 있다.
		//이처럼 로그인에 실패하는 상황이 한번이라도 발생한다면, 에러가 세션에 저장되어 남아있게 된다.
		//로그인에 성공했다고 하지만 이렇게 세션에 에러가 남겨진 채로 넘어갈 수는 없다.
		//따라서 로그인 성공 핸들러에서 에러 세션을 지우는 작업을 해줘야 한다.
		clearAuthenticationAttributes(request);
		
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		CustomUserDetails userDetails = (CustomUserDetails) principal;
		String auth = userDetails.getAUTHOR();
		
		System.out.println("SuccessHandler, 로그인, 사용자 권한 : " + auth);
		
		//admin이면 관리자 메인 페이지로 간다.
		if (auth.equals("ADMIN")) {
			response.sendRedirect("admin/admGeneration");
		//그 이외
		} else {
			RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();
			RequestCache requestCache = new HttpSessionRequestCache();

			SavedRequest savedRequest = requestCache.getRequest(request, response); 
			
			//어떤 페이지로 요청했다가 로그인 페이지로 넘어가는 경우, 이전 페이지로 간다.
			if (savedRequest != null) {
				String targetUrl = savedRequest.getRedirectUrl();
				redirectStrategy.sendRedirect(request, response, targetUrl);
			//메인 페이지에서 로그인한 경우 이전 페이지 기억값이 null이므로 메인 페이지로 리다이렉트
			} else {
				response.sendRedirect("/app");
			}
		}
		
		
	}
	
    protected void clearAuthenticationAttributes(HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        if(session==null) return;
        session.removeAttribute(WebAttributes.AUTHENTICATION_EXCEPTION);
    }
	
}

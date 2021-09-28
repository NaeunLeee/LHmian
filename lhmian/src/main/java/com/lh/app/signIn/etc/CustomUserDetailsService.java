package com.lh.app.signIn.etc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.lh.app.member.service.MemberService;

import lombok.extern.java.Log;

@Log
public class CustomUserDetailsService implements UserDetailsService {
    
    @Autowired
    private MemberService memberService;
 
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        log.info("아이디 : " + username);
        
        return null;
    }
 
}

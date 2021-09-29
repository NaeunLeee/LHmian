package com.lh.app.signIn.etc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.lh.app.member.mapper.MemberMapper;

public class CustomUserDetailsService implements UserDetailsService {
    
    @Autowired
    private MemberMapper memberMapper;
 
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        CustomUserDetails user = memberMapper.selectUserById(username);
        if(user==null) {
            throw new UsernameNotFoundException(username);
        }
        return user;
    }
 
}

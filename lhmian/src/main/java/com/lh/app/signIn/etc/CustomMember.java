package com.lh.app.signIn.etc;

import java.util.Collection;
import java.util.stream.Collectors;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

import com.lh.app.signIn.domain.MemberVO;

public class CustomMember extends User {
    
    private static final long serialVersionUID = 1L;
    
    private MemberVO member;
    
    public CustomMember(String username, String password, Collection<? extends GrantedAuthority> authorities) {
    	super(username, password, authorities);
    }
    
//    public CustomMember(MemberVO vo) {
//    
//    	super(vo.getId(), vo.getPassword(), vo.getAuthor().stream()
//    			.map(auth -> new SimpleGrantedAuthority(auth.getAuth())).
//    			collect(Collectors.toList()));
//    	
//    	this.member = vo;
//    }
 
}
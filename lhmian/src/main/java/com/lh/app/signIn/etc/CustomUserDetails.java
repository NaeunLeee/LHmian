package com.lh.app.signIn.etc;

import java.util.ArrayList;
import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

@SuppressWarnings("serial")
	public class CustomUserDetails implements UserDetails {
	    
	    private String ID;
	    private String PASSWORD;
	    private String AUTHORITY;
	    private boolean ENABLED = true;
	    private String NAME;
	    private String PHONE;
	    private String HOUSEINFO;
	    private String AUTHOR;
	    
	    
	    @Override
	    public Collection<? extends GrantedAuthority> getAuthorities() {
	        ArrayList<GrantedAuthority> auth = new ArrayList<GrantedAuthority>();
	        auth.add(new SimpleGrantedAuthority("ROLE_" + AUTHORITY));
	        return auth;
	    }
	 
	    @Override
	    public String getPassword() {
	        return PASSWORD;
	    }
	 
	    @Override
	    public String getUsername() {
	        return ID;
	    }
	 
	    @Override
	    public boolean isAccountNonExpired() {
	        return true;
	    }
	 
	    @Override
	    public boolean isAccountNonLocked() {
	        return true;
	    }
	 
	    @Override
	    public boolean isCredentialsNonExpired() {
	        return true;
	    }
	 
	    @Override
	    public boolean isEnabled() {
	        return ENABLED;
	    }
	    
	    public String getPHONE() {
	        return PHONE;
	    }
	 
	    public void setPHONE(String phone) {
	        PHONE = phone;
	    }
	    
	    public String getNAME() {
	        return NAME;
	    }
	 
	    public void setNAME(String name) {
	        NAME = name;
	    }
	    
	    public String getHOUSEINFO() {
	        return HOUSEINFO;
	    }
	 
	    public void setHOUSEINFO(String houseInfo) {
	    	HOUSEINFO = houseInfo;
	    }
	    
	    public String getAUTHOR() {
	        return AUTHOR;
	    }
	 
	    public void setAUTHOR(String author) {
	    	AUTHOR = author;
	    }
	 
	}


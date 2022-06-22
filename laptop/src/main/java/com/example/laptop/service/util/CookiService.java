package com.example.laptop.service.util;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Base64;

@Service
public class CookiService {
    @Autowired
    HttpServletRequest request;
    @Autowired
    HttpServletResponse response;
    public Cookie create(String name,String value,int days){
        String endCode=  Base64.getEncoder().encodeToString(value.getBytes());
        Cookie cookie=new Cookie(name, endCode);
        cookie.setMaxAge(days*24*60*60);
        cookie.setPath("/");
        response.addCookie(cookie);
        return cookie;

    }
    public Cookie read(String name){
        Cookie[] cookies= request.getCookies();
        if (cookies!=null){
            for (Cookie cookie: cookies
            ) {
                if (cookie.getName().equalsIgnoreCase(name)){
                    String deCode=new String(Base64.getDecoder().decode(cookie.getValue()));
                    cookie.setValue(deCode);
                    return cookie;
                }

            }
        }
        return null;

    }
    public Cookie delete(String name){
        return   this.create(name,"",0);
    }
}

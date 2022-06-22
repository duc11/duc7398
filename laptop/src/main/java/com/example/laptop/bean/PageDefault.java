package com.example.laptop.bean;

import org.springframework.security.access.AccessDeniedException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class PageDefault {
    @ExceptionHandler(value = AccessDeniedException.class)
    public String accessIsDenied(Exception e) {
        return "/introduce/ok/403";
    }
}

package com.example.laptop.interceptor;

import com.example.laptop.modelDTO.Customer;
import com.example.laptop.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Optional;

@Component
public class AuthorizeInterceptor extends HandlerInterceptorAdapter {
    @Autowired
    CustomerService customerService;

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        HttpSession session=request.getSession();
        Optional<Customer> user= (Optional<Customer>) session.getAttribute("user");
        if (user==null){
            session.setAttribute("back-uri",request.getRequestURI());
          response.sendRedirect("/account/login");
          return false;
        }else

        return true;
    }
}

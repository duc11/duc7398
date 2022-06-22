package com.example.laptop.config;

//import com.example.laptop.interceptor.AuthorizeInterceptor;
import com.example.laptop.interceptor.AuthorizeInterceptor;
import com.example.laptop.interceptor.ShareInterceptor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
class InterceptorCongfig implements WebMvcConfigurer {
    @Autowired
    ShareInterceptor shareInterceptor;
    @Autowired
    AuthorizeInterceptor authorizeInterceptor;
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(shareInterceptor).addPathPatterns("/**");
        registry.addInterceptor(authorizeInterceptor).addPathPatterns("/account/change","/account/edit",
                "/account/logoff","/account/forgot","/order/**");
    }
}

package com.example.laptop.config;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.web.servlet.LocaleResolver;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.i18n.CookieLocaleResolver;
import org.springframework.web.servlet.i18n.LocaleChangeInterceptor;
import java.util.Locale;

@Configuration
public class ResourceConfig implements WebMvcConfigurer {
    @Bean(name = "messageSource")
   public MessageSource getMessageSource(){
        ReloadableResourceBundleMessageSource ms=new ReloadableResourceBundleMessageSource();
        ms.setBasenames("classpath:static/valid/messages/account","classpath:static/valid/messages/layout");
        ms.setDefaultEncoding("utf-8");
        return ms;
    }
    @Override
    public void addInterceptors(InterceptorRegistry  registry){
        LocaleChangeInterceptor interceptor=new LocaleChangeInterceptor();
        interceptor.setParamName("lang");
        registry.addInterceptor(interceptor).addPathPatterns("/home/*");

    }
    @Bean("localeResolver")
    public LocaleResolver getLocaleResolver(){
        CookieLocaleResolver cookieLocaleResolver=new CookieLocaleResolver();
        cookieLocaleResolver.setCookiePath("/");
        cookieLocaleResolver.setCookieMaxAge(2*60*60);
        cookieLocaleResolver.setDefaultLocale(new Locale("vi"));// ngôn ngữ mặc định
        return cookieLocaleResolver;
    }
}

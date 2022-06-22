package com.example.laptop.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;

import java.util.Properties;

@Configuration
public class GmailConfig {
    @Bean
    public JavaMailSender getJavaMailSender(){
        JavaMailSenderImpl sender=new JavaMailSenderImpl();
        sender.setDefaultEncoding("utf-8");
        sender.setHost("smtp.gmail.com");
        sender.setPort(587);
        sender.setUsername("trinhhuuduc070398@gmail.com");
        sender.setPassword("bewdgwcccvejwpoa");

        Properties properties= sender.getJavaMailProperties();
        properties.setProperty("mail.transport.protocol","smtp");
        properties.setProperty("mail.smtp.auth","true");// yêu cầu người dùng đăng nhập
        properties.setProperty("mail.smtp.starttls.enable","true");//dunngf chuẩn
        properties.setProperty("mail.debug","true");
        return sender;


    }
}

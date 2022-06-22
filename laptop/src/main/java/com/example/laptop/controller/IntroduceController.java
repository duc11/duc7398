package com.example.laptop.controller;

import com.example.laptop.bean.Mailmodal;
import com.example.laptop.service.util.MailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.mail.MessagingException;

@Controller
@RequestMapping("introduce")
public class IntroduceController {
    @Autowired
    MailService mailService;
    @GetMapping("about")
    public String AboutUs(){
        return "introduce/ok/about";
    }
    @GetMapping("contact")
    public String Contact(){
        return "introduce/ok/contact";
    }
    @GetMapping("faq")
    public String Faq(){
        return "introduce/ok/faq";
    }
    @GetMapping("company")
    public String Company(){
        return "introduce/ok/company";
    }
    @GetMapping("404")
    public String NotFind(){
        return "introduce/ok/404";
    }
    @GetMapping("feedback")
    public String Feedback(){
        return "introduce/ok/feedback";
    }
    @GetMapping("refund")
    public String Refund(){
        return "introduce/ok/refund";
    }

    @PostMapping("send")
    public String send( @RequestParam("name") String name,@RequestParam("email")String email,
                       @RequestParam("subject") String subject,
                       @RequestParam("body")String body) throws MessagingException {
        Mailmodal mailmodal=new Mailmodal();
        mailmodal.setSubject(subject);
        mailmodal.setBody("Tôi là "+name+"<hr><h2>'"+body+"'</h2>");
        mailmodal.setTo(email);
        mailmodal.setFrom("trinhhuuduc070398@gmail.com");
        mailService.send(mailmodal);
        return "introduce/ok/message";


    }
    @PostMapping("submit")
    public String submit( @RequestParam("name") String name,@RequestParam("tel") String tel,@RequestParam("email")String email,
                        @RequestParam("body")String body) throws MessagingException {
        Mailmodal mailmodal=new Mailmodal();
        mailmodal.setSubject("góp ý phản ánh");
        mailmodal.setBody("Họ tên khách hàng là "+name+",số điện thoại là"+tel+"<hr><h2>"+body+",</h2>");
        mailmodal.setTo(email);
        mailmodal.setFrom("trinhhuuduc070398@gmail.com");
        mailService.send(mailmodal);
        return "introduce/ok/message1";


    }
}

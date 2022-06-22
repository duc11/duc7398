package com.example.laptop.controller;

import com.example.laptop.bean.Mailmodal;
import com.example.laptop.modelDTO.Customer;
import com.example.laptop.service.CustomerService;
import com.example.laptop.service.util.CookiService;
import com.example.laptop.service.util.MailService;
import org.hibernate.validator.internal.constraintvalidators.hv.EmailValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.mail.MessagingException;
import javax.servlet.ServletContext;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.constraints.Email;
import java.io.File;
import java.io.IOException;
import java.util.Optional;
import java.util.regex.Pattern;

@Controller
@RequestMapping("account")
public class AccountController {
    @Autowired
    CustomerService customerService;
    @Autowired
    HttpSession session;
    @Autowired
    CookiService cookiService;
    @Autowired
    ServletContext servletContext;
    @Autowired
    MailService mailService;
    @Autowired
    HttpServletRequest request;

    @GetMapping("login")
    public String login(Model model) {
        Cookie user = cookiService.read("userId");
        if (user != null) {
            String uid = user.getValue();
            String pw = cookiService.read("pw").getValue();
            model.addAttribute("uid", uid);
            model.addAttribute("pw", pw);
        }
        return "account/ok/login";
    }

    @PostMapping("login")
    public String login(Model model, @RequestParam("id") String id, @RequestParam("pw") String pw,
                        @RequestParam(value = "rm", defaultValue = "false") boolean rm) {
        Optional<Customer> user = customerService.findById(id);
        if (user.isPresent()) {
            if (!id.equals(user.get().getCustomerId())) {
                model.addAttribute("message", "invalid userId");
            } else if (!pw.equals(user.get().getPassword())) {
                model.addAttribute("message", "invalid password");
            } else if (!user.get().getActivated()) {
                model.addAttribute("message", "account is invalid");
            } else {
                model.addAttribute("message", "login success");
                session.setAttribute("user", user);
                if (rm == true) {
                    cookiService.create("userId", user.get().getCustomerId(), 30);
                    cookiService.create("pw", user.get().getPassword(), 30);
                } else {
                    cookiService.delete("userId");
                    cookiService.delete("pw");
                }
                String uri = (String) session.getAttribute("back-uri");
                if (uri != null) {
                    return "redirect:" + uri;
                }


            }
        } else {
            model.addAttribute("message", "invalid user");
        }
        return "redirect:/home";
    }

    @RequestMapping("logoff")
    public String logoff() {
        session.removeAttribute("user");
        return "redirect:/account/login";
    }

    @GetMapping("register")
    public String register(Model model) {
        Customer user = new Customer();
        model.addAttribute("form", user);
        return "account/ok/register";
    }

    @PostMapping("register")
    public String register(Model model, @Validated @ModelAttribute("form") Customer user, BindingResult result,
                           @RequestParam("photo_file") MultipartFile file) throws IOException, MessagingException {
        if (result.hasErrors()) {
            model.addAttribute("message", "please fix errors");
            return "account/ok/register";
        } else {
            Optional<Customer> user1 = customerService.findById(user.getCustomerId());
            if (user1.isPresent()) {
                model.addAttribute("message", "user is in used");
                return "account/ok/register";
            }
            else {
                String regexPattern = "^[a-zA-Z0-9_!#$%&'*+/=?`{|}~^.-]+@[a-zA-Z0-9.-]+$";
                if (!Pattern.compile(regexPattern).matcher(user.getEmail()).matches()){
                    model.addAttribute("message", "email is not true");
                }
            }
        }

        if (file.isEmpty()) {
            user.setPhoto("user.jpg");
        } else {
            String d = servletContext.getRealPath("/admin/images/customers");
            File f = new File(d, file.getOriginalFilename());
            file.transferTo(f);
            user.setPhoto(f.getName());
        }
        user.setActivated(false);
        user.setAdmin(false);
        customerService.save(user);
        model.addAttribute("message", "register success");
        String from = "trinhhuuduc070398@gmail.com";
        String to = user.getEmail();
        String subject = "hello";
        String url = request.getRequestURL().toString().replace("register", "active/" + user.getCustomerId());
        String body = "Click <a href='" + url + "'>Actived</a>";
        Mailmodal mail = new Mailmodal(from, to, subject, body);
        mailService.send(mail);

        return "account/ok/register";
    }

    @GetMapping("active/{id}")
    public String actived(@PathVariable("id") String id, Model model) {
        Optional<Customer> user = customerService.findById(id);
        if (user.isPresent()) {
            user.get().setActivated(true);
            customerService.save(user.get());
        } else model.addAttribute("message", "invalid user");
        return "redirect:/account/login";
    }

    @GetMapping("forgot")
    public String forgot() {
        return "account/ok/forgot";
    }

    @PostMapping("forgot")
    public String forgot(Model model, @RequestParam("id") String id
                         ) throws IOException, MessagingException {
        Optional<Customer> user = customerService.findById(id);
        if (user.isPresent()) {

            String from = "trinhhuuduc070398@gmail.com";
            String to = user.get().getEmail();
            String subject = " xác nhận Password";
            String body = "Click vào đây để tạo  mật khẩu mới: " +
                    " <a href=http://localhost:8081/account/verify-forgot>Tạo mật khẩu mới</a>";

            Mailmodal mail = new Mailmodal(from, to, subject, body);
            mailService.send(mail);
        } else {
            model.addAttribute("message", "invalid user");
        }

        return "account/ok/message";
    }
    @GetMapping("verify-forgot")
    public String newFogot(Model model) {
        return "account/ok/createForgot";
    }
    @PostMapping("reset")
    public String verify(Model model,@RequestParam("id") String id,@RequestParam("password") String password,@RequestParam("resetPassword")String resetPassword) {
        Optional<Customer> user = customerService.findById(id);
        user.get().setPassword(password);
        if (!password.equals(resetPassword)){
            model.addAttribute("message", "\n" +
                    "password does not match new password");
            return "account/ok/createForgot";
        }else {
        model.addAttribute("user", user);
        customerService.save(user.get());
        }
        return "account/ok/message1";
    }

    @GetMapping("change")
    public String change(Model model) {
        Customer user = new Customer();
        model.addAttribute("user", user);
        return "account/ok/change";
    }

    @PostMapping("change")
    public String change(Model model, @RequestParam("id") String id,
                         @RequestParam("pw1") String pw1,
                         @RequestParam("pw2") String pw2,
                         @RequestParam("pw3") String pw3
    ) throws IOException {
        Optional<Customer> user = customerService.findById(id);
        if (user.isPresent()) {
            if (!pw1.equals(user.get().getPassword())) {
                model.addAttribute("message", "old password is invalid");
            } else {
                if (!pw3.equals(pw2)) {
                    model.addAttribute("message", "\n" +
                            "password does not match new password");
                } else {
                    user.get().setPassword(pw2);
                    customerService.save(user.get());
                    model.addAttribute("message", "change success");
                }
            }
        } else {
            model.addAttribute("message", "invalid user");
        }

        return "account/ok/change";
    }

    @GetMapping("edit")
    public String edit(Model model) {
        Optional<Customer> user = (Optional<Customer>) session.getAttribute("user");
        if (user.isPresent()) {
            model.addAttribute("form", user.get());
        }
        return "account/ok/edit";
    }

    @PostMapping("edit")
    public String edit(Model model, @ModelAttribute("form") Customer user,
                       @RequestParam("photo_file") MultipartFile file) throws IOException {
        if (!file.isEmpty()) {
            String d = servletContext.getRealPath("/admin/images/customers");
            File f = new File(d, file.getOriginalFilename());
            file.transferTo(f);
            user.setPhoto(f.getName());
        }
        customerService.save(user);
        session.setAttribute("user", user);
        model.addAttribute("message", "update success");


        return "account/ok/edit";
    }


}

package com.example.laptop.controller.admin;

import com.example.laptop.model.CategoryForm;
import com.example.laptop.modelDTO.Account;
import com.example.laptop.modelDTO.Category;
import com.example.laptop.service.AccountService;
import com.example.laptop.service.CategoryService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class AdminAccount {
    @GetMapping("login")
    public String login(Model model) {
        return "login";
    }

    @Autowired
    AccountService accountService;
    @Autowired
    PasswordEncoder passwordEncoder;

    @PreAuthorize("hasRole('admin')")
    @GetMapping("index")
    public String index(Model model) {
        Account account = new Account();
        model.addAttribute("entity", account);
        model.addAttribute("list", accountService.findAll());
        return "admin/account/index";
    }

    @RequestMapping("edit/{id}")
    public String edit(@PathVariable("id") String id, Model model) {
        Account account = accountService.findById(id).get();
        model.addAttribute("entity", account);
        model.addAttribute("list", accountService.findAll());
        return "admin/category/index";
    }

    @PostMapping("create")
    public String create(RedirectAttributes model, @ModelAttribute("entity") Account account) {
        account.setPassword(passwordEncoder.encode(account.getPassword()));
        accountService.save(account);
        model.addAttribute("message", "thêm mới thành công");
        return "redirect:/index";
    }

    @RequestMapping("delete/{id}")
    public String delete(@PathVariable("id") String id2, RedirectAttributes model) {

        accountService.deleteById(id2);
        model.addAttribute("message", "xóa thành công");

        return "redirect:/index";

    }

    @PostMapping("update")
    public String update(RedirectAttributes model, @ModelAttribute("entity") Account account, @RequestParam("name") String name) {

        account.setUsername(name);
        account.setPassword(passwordEncoder.encode(account.getPassword()));
        accountService.save(account);
        model.addAttribute("message", "cập nhât thành công");
        return "redirect:/edit/" + account.getUsername();
    }
}

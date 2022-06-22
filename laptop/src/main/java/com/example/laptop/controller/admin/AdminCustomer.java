package com.example.laptop.controller.admin;

import com.example.laptop.model.CustomerForm;
import com.example.laptop.modelDTO.Customer;
import com.example.laptop.service.CustomerService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.ServletContext;
import java.io.File;
import java.io.IOException;

@Controller
@RequestMapping("customer")
public class AdminCustomer {
    @Autowired
    CustomerService customerService;
    @Autowired
    ServletContext context;

    @PreAuthorize("hasRole('admin')")
    @GetMapping("index")
    public String index(Model model) {
        CustomerForm customer = new CustomerForm();
        model.addAttribute("entity", customer);
        model.addAttribute("list", customerService.findAll());
        return "admin/customer/index";
    }
    @RequestMapping("edit/{id}")
    public String edit(@PathVariable("id") String id, Model model){

        Customer customer1=customerService.findById(id).get();
        CustomerForm customerForm=new CustomerForm();
        BeanUtils.copyProperties(customer1,customerForm);
        customerForm.setIs(true);
        model.addAttribute("entity",customerForm);
        model.addAttribute("list", customerService.findAll());
        return "admin/customer/index";
    }
    @PostMapping("create")
    public String create(RedirectAttributes model, @ModelAttribute("entity") CustomerForm customer,
                         @RequestParam("photo_file")MultipartFile file) throws IOException {
        Customer customer1=new Customer();
        if (file.isEmpty()){
            customer.setPhoto("user1.png");
        }else
        {
            String d=context.getRealPath("/admin/images/customers");
            File f=new File(d,file.getOriginalFilename());
            file.transferTo(f);

            customer.setPhoto(f.getName());



        }
        customer1.setPassword(customer.getPassword());
        customer1.setCustomerId(customer.getCustomerId());
        customer1.setFullName(customer.getFullName());
        customer1.setActivated(customer.getActivated());
        customer1.setAdmin(customer.getAdmin());
        customer1.setEmail(customer.getEmail());
        customer1.setPhoto(customer.getPhoto());
        customerService.save(customer1);
        model.addAttribute("message","thêm mới thành công");
       return "redirect:/customer/index";
    }
    @RequestMapping("delete/{id}")
    public String delete(@PathVariable(value = "id",required = false) String id2,RedirectAttributes model){

            if (id2!=null){
            customerService.deleteById(id2);}

        model.addAttribute("message","xóa thành công");

        return "redirect:/customer/index";

    }

    @PostMapping("update")
    public String update(RedirectAttributes model, @ModelAttribute("entity") CustomerForm customer,
                         @RequestParam("photo_file")MultipartFile file) throws IllegalStateException, IOException {
        Customer customer1=new Customer();


            customer1.setCustomerId(customer.getCustomerId());
            customer1.setFullName(customer.getFullName());
            customer1.setPassword(customer.getPassword());
            customer1.setActivated(customer.getActivated());
            customer1.setAdmin(customer.getAdmin());
            customer1.setEmail(customer.getEmail());
        if (!file.isEmpty()){
            customer.setPhoto(file.getOriginalFilename());
            String path=context.getRealPath("/admin/images/customers/"+customer.getPhoto());
            file.transferTo(new File(path));
        }
        customer1.setPhoto(customer.getPhoto());
        customerService.save(customer1);
        model.addAttribute("message","cập nhât thành công");
        return "redirect:/customer/edit/"+customer1.getCustomerId();
    }


}

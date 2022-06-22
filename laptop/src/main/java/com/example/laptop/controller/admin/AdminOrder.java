package com.example.laptop.controller.admin;

import com.example.laptop.modelDTO.*;
import com.example.laptop.repository.OrderRepository;
import com.example.laptop.service.CategoryService;
import com.example.laptop.service.OrderDetailService;
import com.example.laptop.service.OrderService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

@Controller
@RequestMapping("order")
public class AdminOrder {
    @Autowired
    OrderService orderService;
    @Autowired
    OrderDetailService orderDetailService;

    @Autowired
    private OrderRepository orderRepository;

    @GetMapping("index")
    public String index(Model model, @RequestParam(name = "page") Optional<Integer> page,
                        @RequestParam(name = "size") Optional<Integer> size) {


        int currentPage=page.orElse(1);
        int pageSize=size.orElse(2);
        Pageable pageable= PageRequest.of(currentPage-1,pageSize, Sort.by("orderId"));
        Page<Order> orders=orderService.findAll(pageable);

        int totalPages = orders.getTotalPages();
        if (totalPages > 0) {
            int start = Math.max(1, currentPage - 2);
            int end = Math.min(currentPage + 2, totalPages);
            if (totalPages > 5) {
                if (end == totalPages) {
                    start = end - 5;
                }
                if (start == 1) {
                    end = start + 5;
                }
            }

            List<Integer> pageNumbers = IntStream.rangeClosed(start, end).boxed()
                    .collect(Collectors.toList());
            model.addAttribute("pageNumBers", pageNumbers);

        }
        model.addAttribute("list", orders);
        Order order = new Order();
        order.setIs(false);
        model.addAttribute("entity", order);

        return "admin/order/index";
    }
    @RequestMapping("edit/{id}")
    public String edit(@PathVariable("id") Long id, Model model,@RequestParam(name = "page") Optional<Integer> page,
                       @RequestParam(name = "size") Optional<Integer> size  ){
        Order order=orderService.findById(id).get();
        order.setIs(true);

        model.addAttribute("entity",order);
        int currentPage=page.orElse(1);
        int pageSize=size.orElse(2);
        Pageable pageable= PageRequest.of(currentPage-1,pageSize, Sort.by("orderId"));
        Page<Order> orders=orderService.findAll(pageable);

        int totalPages = orders.getTotalPages();
        if (totalPages > 0) {
            int start = Math.max(1, currentPage - 2);
            int end = Math.min(currentPage + 2, totalPages);
            if (totalPages > 5) {
                if (end == totalPages) {
                    start = end - 5;
                }
                if (start == 1) {
                    end = start + 5;
                }
            }

            List<Integer> pageNumbers = IntStream.rangeClosed(start, end).boxed()
                    .collect(Collectors.toList());
            model.addAttribute("pageNumBers", pageNumbers);

        }
        model.addAttribute("list", orders);
        List<Order_Detail> order_details=order.getOrderDetails();
        model.addAttribute("list1", order_details);

        return "admin/order/index";
    }
    @PostMapping("create")
    public String create(RedirectAttributes model, @ModelAttribute("entity") Order order){

        order = orderService.save(order);
        model.addAttribute("message","thêm mới thành công");
       return "redirect:/order/index";
    }
    @RequestMapping("delete/{id}")
    public String delete(@PathVariable(value = "id",required = false) Long id2,RedirectAttributes model){


                orderService.deleteById(id2);


        model.addAttribute("message","xóa thành công");

        return "redirect:/order/index";

    }
    @PostMapping("update")
    public String update(RedirectAttributes model, @ModelAttribute("entity") Order order){
        Order order1=orderService.findById(order.getOrderId()).get();
        BeanUtils.copyProperties(order,order1);
        orderService.save(order1);
        model.addAttribute("message","cập nhât thành công");
        return "redirect:/order/edit/"+order1.getOrderId();
    }


}

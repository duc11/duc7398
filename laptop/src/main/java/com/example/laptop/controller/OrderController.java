package com.example.laptop.controller;

import com.example.laptop.modelDTO.*;
import com.example.laptop.repository.OrderDetailRepository;
import com.example.laptop.repository.OrderRepository;
import com.example.laptop.service.OrderDetailService;
import com.example.laptop.service.OrderService;
import com.example.laptop.service.ShipperService;
import com.example.laptop.service.util.ShoppingCartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.time.LocalDate;
import java.util.*;

@Controller
@RequestMapping("order")
public class OrderController {
    @Autowired
    HttpSession session;
    @Autowired
    ShoppingCartService shoppingCartService;
    @Autowired
    OrderService orderService;
    @Autowired
    OrderDetailService orderDetailService;
    @Autowired
    OrderRepository orderRepository;
    @Autowired
    OrderDetailRepository orderDetailRepository;
    @Autowired
    ShipperService shipperService;

    @GetMapping("checkout")
    public String showOrder(@ModelAttribute("order") Order order) {
        Optional<Customer> user = (Optional<Customer>) session.getAttribute("user");
//        Customer user = (Customer) SecurityContextHolder.getContext().getAuthentication().getPrincipal();

        order.setOrderDate(new Date());
        order.setCustomer(user.get());
        order.setAmount(shoppingCartService.getAmount());
        return "order/checkout";
    }

    @PostMapping("checkout")
    public String order(Model model, @ModelAttribute("order") Order order) {
        Collection<Product> cart = shoppingCartService.getItems();
        List<Order_Detail> order_details = new ArrayList<>();
        if (!cart.isEmpty()) {
            for (Product p : cart
            ) {
                Order_Detail order_detail = new Order_Detail();
                order_detail.setOrders(order);
                order_detail.setDiscount(p.getDiscount());
                order_detail.setQuantity(p.getQuantity());
                order_detail.setUnitPrice(p.getPrice());
                order_detail.setProduct(p);
                order_details.add(order_detail);
            }
        }

        orderService.save(order);
        orderDetailService.saveAll(order_details);
        shoppingCartService.clear();
        return "redirect:/order/list";
    }

    @GetMapping("list")
    public String list(Model model) {
        Optional<Customer> user = (Optional<Customer>) session.getAttribute("user");
//        Customer user = (Customer) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        List<Order> orders = orderRepository.getByOrders(user.get().getCustomerId());
        model.addAttribute("orders", orders);
        return "order/ok/list";
    }

    @GetMapping("detail/{id}")
    public String list(Model model, @PathVariable("id") Long id) {
        Optional<Order> order = orderService.findById(id);
        List<Order_Detail> orders = orderDetailRepository.getAllByOrderDetail(id);
        model.addAttribute("info", order.get());
        model.addAttribute("orders", orders);
        return "order/detail";
    }

    @GetMapping("buy")
    public String ProductBuy(Model model) {
        Optional<Customer> user = (Optional<Customer>) session.getAttribute("user");
//        Customer user = (Customer) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        List<Product> products = orderDetailRepository.getAllByProductBuy(user.get().getCustomerId());
        model.addAttribute("list", products);
        return "product/list";
    }

    @GetMapping("status/{id}")
    public String status(Model model, @PathVariable("id") Long id) {
        double p = 0;
        Order order = orderService.findById(id).get();
        Shipper shipper = order.getShipper();
        List<Order_Detail> order_details = order.getOrderDetails();
        for (Order_Detail o : order_details
        ) {
            p += o.getUnitPrice() * o.getQuantity() * (1 - o.getDiscount() / 100);
        }
        model.addAttribute("p", p);
        model.addAttribute("order_details", order_details);

        model.addAttribute("shipper", shipper);
        model.addAttribute("order", order);
        return "order/ok/status";
    }

    @GetMapping("huy/{id}")
    public String huy(Model model, @PathVariable("id") Long id) {
        Order order1 = orderService.findById(id).get();

            model.addAttribute("order", order1);

        return "order/ok/huy_don_hang";
    }

    @PostMapping("huy/{id}")
    public String huyDH(@PathVariable("id") Long id) {
        Order order = orderService.findById(id).get();
        orderService.delete(order);
        return "introduce/ok/message2";
    }


}

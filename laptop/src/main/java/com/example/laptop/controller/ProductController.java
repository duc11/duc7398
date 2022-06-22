package com.example.laptop.controller;

import com.example.laptop.bean.Mailmodal;
import com.example.laptop.modelDTO.*;
import com.example.laptop.repository.BrandProductRepository;
import com.example.laptop.repository.ManufactureRepository;
import com.example.laptop.repository.ProductRepository;
import com.example.laptop.service.BrandProductService;
import com.example.laptop.service.CategoryService;
import com.example.laptop.service.ManufacturerService;
import com.example.laptop.service.ProductService;
import com.example.laptop.service.util.CookiService;
import com.example.laptop.service.util.MailService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.mail.MailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.security.PermitAll;
import javax.mail.MessagingException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.*;
import java.util.stream.Collectors;
import java.util.stream.IntStream;


@Controller
@RequestMapping("product")
public class ProductController {
    @Autowired
    BrandProductService brandProductService;
    @Autowired
    ProductRepository productRepository;
    @Autowired
    ProductService productService;
    @Autowired
    ManufacturerService manufacturerService;
    @Autowired
    CookiService cookiService;
    @Autowired
    ManufactureRepository manufactureRepository;
    @Autowired
    MailService mailService;
    @Autowired
    HttpSession session;
    @Autowired
    CategoryService categoryService;
     @GetMapping("list/{id}")
     public String findProductId(@PathVariable("id") Long id,
                                 Model model){
        List<Product> products=new ArrayList<>();
      Optional<Manufacturer> manufacturer=manufacturerService.findById(id);
          List<Product> p=manufacturer.get().getProducts();
         for (Product p1:p
              ) {
             if (p1.getCategory().getCategoryId()==1){
                 Product product=new Product();
                 BeanUtils.copyProperties(p1,product);
                 products.add(product);
             }
         }

          model.addAttribute("list",products);



       return"product/list";
     }
     @GetMapping("price/{id}")
     public String getProductPrice(Model model,@PathVariable("id") Integer id){
         List<Product> products=new ArrayList<>();
         switch (id){
             case 1:products=productRepository.getByProductPrice1();
             break;
             case 2:products=productRepository.getByProductPrice2();
                 break;
             case 3:products=productRepository.getByProductPrice3();
                 break;
             case 4:products=productRepository.getByProductPrice4();
                 break;
         }
         model.addAttribute("list",products);
         return"product/list";
     }
    @GetMapping("brand/{id}")
    public String findBrandProduct(@PathVariable("id") Long id,
                                Model model){
        Optional<BrandProduct> brandProduct=brandProductService.findById(id);
        List<Product> p=brandProduct.get().getProducts();

        model.addAttribute("list",p);



        return"product/list";
    }

    @GetMapping("listPC/{id}")
    public String findProductId(@PathVariable("id") Integer id,
                                Model model){
      List<Product> products=new ArrayList<>();
        Manufacturer manufacturer=new Manufacturer();
      switch (id){
          case 0: manufacturer=manufactureRepository.getByName2();

              break;
          case 1:manufacturer=manufactureRepository.getByName4();
              break;
          case 2:manufacturer=manufactureRepository.getByName5();
              break;
          case 3:manufacturer=manufactureRepository.getByName6();
              break;
      }        List<Product> p=manufacturer.getProducts();
        for (Product p1:p
        ) {
            if (p1.getCategory().getCategoryId()==2){
                Product product=new Product();
                BeanUtils.copyProperties(p1,product);
                products.add(product);
            }
        }

        model.addAttribute("list",products);



        return"product/list";
    }


    @GetMapping("listPT/{id}")
    public String findbyPT(@PathVariable("id") Integer id,
                                Model model){
        List<Product> products=new ArrayList<>();
        switch (id){
             case 0:
                 products=productRepository.findByEarPhone();
                break;
            case 1:
                products=productRepository.findByPT((long) 4);
                break;
            case 2:  products=productRepository.findByPT((long) 5);
                break;
            case 3:  products=productRepository.findByPT((long) 6);
                break;
            case 4:  products=productRepository.findByPT((long) 7);
                break;
            case 5:  products=productRepository.findByPT((long) 8);
                break;
        }

        model.addAttribute("list",products);



        return"product/list";
    }




    @GetMapping("search")
    public String listBrand(Model model,@RequestParam(name = "name") String name,
                            @RequestParam(name = "page") Optional<Integer> page, @RequestParam(name = "size") Optional<Integer> size){
        int currentPage=page.orElse(1);
        int pageSize=size.orElse(5);
        Pageable pageable= PageRequest.of(currentPage-1,pageSize, Sort.by("productId"));
        Page<Product> products1=null;
        if (StringUtils.hasText(name)) {
            products1 = productService.findByNameContaining(name, pageable);
            model.addAttribute("name",name);}
        int totalPages = products1.getTotalPages();
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


        model.addAttribute("list",products1);
        return ("product/search");
    }







//
//    @GetMapping("favo")
//    public String findProductId(
//                                Model model){
//        Cookie favo = cookiService.read("favo");
//        Set<Long> ids=new HashSet<>();
//        String[] s=new String[100];
//        if (favo != null) {
//            s =favo.getValue().split(",");
//            for (String ss:s
//            ) {
//                ids.add(Long.parseLong(ss));
//            }
//
//        }
//        List<Product> list_favo = productService.findByQtProduct(ids);
//        model.addAttribute("list2",list_favo);
//
//
//
//        return"product/detailLaptop";
//    }



    @RequestMapping("/detail/{id1}")
    public String detail(@PathVariable("id1") Long id,
                                Model model){
      Optional<Product> list=productService.findById(id);
          if (list.isPresent()){
              list.get().setViewCount(list.get().getViewCount()+1);
              productService.save(list.get());
          model.addAttribute("list",list.get());}

        List<Product> products1=new ArrayList<>();


        Optional<Manufacturer> manufacturer=manufacturerService.findById(list.get().getManufacturer().getId());
       products1=productRepository.findByProductId(list.get().getCategory().getCategoryId(),manufacturer.get().getId());
            model.addAttribute("list1",products1);


        Set<Long> ids=new HashSet<>();
        String[] s=new String[100];
            Cookie view=cookiService.read("view");
            String value=id.toString();
            if (view!=null){
                value=view.getValue();
                if (!value.contains(id.toString())){
                    value+=","+id.toString();
                }

            }
                cookiService.create("view",value,30);

           s =value.split(",");
           for (String ss:s
          ) {
            ids.add(Long.parseLong(ss));
          }
         List<Product> list_view = productService.findByQtProduct(ids);
         model.addAttribute("list3",list_view);

        Cookie favo = cookiService.read("favo");
        Set<Long> ids1=new HashSet<>();
        String[] s1=new String[100];
        if (favo != null) {
            s1 =favo.getValue().split(",");
            for (String ss:s1
            ) {
                ids1.add(Long.parseLong(ss));
            }

        }
        List<Product> list_favo = productService.findByQtProduct(ids1);
        model.addAttribute("list2",list_favo);



        return"product/detailLaptop";

        }

    @ResponseBody
    @GetMapping("add-favo/{id}")
    public boolean addFavo(@PathVariable("id") Long id
                                ){
        Cookie favo=  cookiService.read("favo");
        String value=id.toString();
        if (favo!=null){
            value=favo.getValue();
            if (!value.contains(id.toString())){
                value+=","+id.toString();

            }else {

                return false;}

        }
        cookiService.create("favo",value,30);

        return true;



    }

    @ResponseBody
    @RequestMapping("send")
    public boolean sendTo(Mailmodal mailmodal,
                          Model model, HttpServletRequest request
                          ){
         mailmodal.setSubject("thông tin sản phẩm");
        try {
            String id=request.getParameter("id");
            String link=request.getRequestURL().toString().replace("send","detail/"+id);
            mailmodal.setBody(mailmodal.getBody()+"<hr> <a href='"+link+"'>Xem chi tiết</a>");
            mailService.send(mailmodal);
            return true;
        } catch (MessagingException e) {
            e.printStackTrace();
            return false;
        }

    }


//    @RequestMapping("contact")
//    public String SendMail(Mailmodal mailmodal,
//                          Model model
//    ){
//        mailmodal.setSubject("thông tin sản phẩm");
//        try {
//            Optional<Customer> user= (Optional<Customer>) session.getAttribute("user");
//            mailmodal.setBody(mailmodal.getBody());
//            mailService.send(mailmodal);
//
//        } catch (MessagingException e) {
//            e.printStackTrace();
//
//        }
//
//    }
        @GetMapping("viewcount")
    public String view(Model model,  @RequestParam(name = "page") Optional<Integer> page, @RequestParam(name = "size") Optional<Integer> size){
            int currentPage=page.orElse(1);
            int pageSize=size.orElse(4);
            Pageable pageable= PageRequest.of(currentPage-1,pageSize, Sort.by("productId"));
            Page<Product> products1=null;
                products1 = productRepository.getByItemview(pageable);
            int totalPages = products1.getTotalPages();
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


            model.addAttribute("list1",products1);



        return "product/list1";
    }
    @GetMapping("")
    public String findProduct(@RequestParam(required = false,name = "cat")Long cat,
                              @RequestParam(required = false,name = "sort")Integer sort,Model model){
         List<Product> products= new ArrayList<>();
        switch (sort){
             case 1:products=productRepository.getNewProduct(cat);
             break;
             case 2:products=productRepository.getAscProduct(cat);
             break;
             case 3:products=productRepository.getDescProduct(cat);
             break;
             case 4:products=productRepository.getViewProduct(cat);
             break;
             case 5:products=productService.findProductId();
             break;
             case 6:products=productService.findByAzProduct();
             break;
         }
         model.addAttribute("cat",cat);
         model.addAttribute("list",products);
         return "product/list";




    }
}

package com.example.laptop.service.iml;

import com.example.laptop.modelDTO.Customer;
import com.example.laptop.repository.AccountRepository;
import com.example.laptop.repository.CustomerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.Optional;

@Service
public class UserServiceAuthenImpl implements UserDetailsService {
    @Autowired
    AccountRepository accountRepository;
    @Autowired
    HttpSession session;
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
//        Customer user=customerRepository.findById(username).get();
//        session.setAttribute("user",user);
        return  accountRepository.findFirstByUsername(username);
    }

}

package com.example.laptop.config;

import com.example.laptop.service.iml.UserServiceAuthenImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {
    @Autowired
    UserServiceAuthenImpl userServiceAuthen;

    @Bean
    public PasswordEncoder passwordEncoder(){
        return new BCryptPasswordEncoder();
    }

    @Override
    public void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userServiceAuthen).passwordEncoder(passwordEncoder());
    }
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        // Cấu hình đường dẫn vào web
        http.authorizeRequests()
                .antMatchers("/product/index").authenticated()
                // Chặn nhưng api bắt đầu bằng backend
                .anyRequest().permitAll();
        http.formLogin()
                .loginPage("/login")
                .loginProcessingUrl("/doLogin")
                .usernameParameter("username")
                .passwordParameter("password")
                .defaultSuccessUrl("/product/index")
                .failureUrl("/login?message=error");
        http.logout().logoutUrl("/logout");
        http.csrf().disable();

    }
}

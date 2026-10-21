package com.SB.shantiniketan;

import com.shantiniketan.servlets.admissionprocess;
import com.shantiniketan.servlets.student_delete_process;
import com.shantiniketan.servlets.student_edit_form;
import com.shantiniketan.servlets.student_edit_process;
import com.shantiniketan.servlets.students;

import jakarta.servlet.MultipartConfigElement;

import org.springframework.boot.web.servlet.ServletRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class ServletConfig {

    @Bean
    public ServletRegistrationBean<students> studentsServletRegistration() {
        ServletRegistrationBean<students> bean = new ServletRegistrationBean<>(new students(), "/students", "/getImage");
        bean.setLoadOnStartup(1);
        return bean;
    }
    
    @Bean
    public ServletRegistrationBean<admissionprocess> admissionProcessRegistration() {
        ServletRegistrationBean<admissionprocess> bean = new ServletRegistrationBean<>(new admissionprocess(), "/admissionprocess");
        bean.setMultipartConfig(new MultipartConfigElement("", 1024 * 1024 * 10, 1024 * 1024 * 50, 1024 * 1024 * 2));
        bean.setLoadOnStartup(2);
        return bean;
    }

    @Bean
    public ServletRegistrationBean<student_edit_form> studentsEditFormRegistration() {
        ServletRegistrationBean<student_edit_form> bean = new ServletRegistrationBean<>(new student_edit_form(), "/student_edit_form");
        bean.setLoadOnStartup(3);
        return bean;
    }

    @Bean
    public ServletRegistrationBean<student_edit_process> studentsEditProcessRegistration() {
        ServletRegistrationBean<student_edit_process> bean = new ServletRegistrationBean<>(new student_edit_process(), "/student_edit_process");
        bean.setMultipartConfig(new MultipartConfigElement("", 1024 * 1024 * 10, 1024 * 1024 * 50, 1024 * 1024 * 2));
        bean.setLoadOnStartup(4);
        return bean;
    }

    @Bean
    public ServletRegistrationBean<student_delete_process> studentsDeleteProcessRegistration() {
        ServletRegistrationBean<student_delete_process> bean = new ServletRegistrationBean<>(new student_delete_process(), "/student_delete_process");
        bean.setLoadOnStartup(5);
        return bean;
    }
}
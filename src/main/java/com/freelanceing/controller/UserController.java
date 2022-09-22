package com.freelanceing.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.freelanceing.dao.UserDao;
import com.freelanceing.dto.User;

@Controller
public class UserController {
	@Autowired
	UserDao dao;
	ModelAndView modelAndView=new ModelAndView();
	@RequestMapping(value = "getsignupjsp",method = {RequestMethod.POST,RequestMethod.GET})
	public ModelAndView saveUser( ModelMap map) {
		modelAndView.setViewName("signup.jsp");
		modelAndView.addObject("user", new User());
		return modelAndView;
	}
	@RequestMapping("saveUser")
	public ModelAndView creatUser(User user) {
		dao.saveUser(user);
		modelAndView.setViewName("Home.jsp");
		return modelAndView;
	}
	@RequestMapping("getloginjsp")
	public ModelAndView login() {
		modelAndView.setViewName("Login.jsp");
		return modelAndView;
	}
	@RequestMapping("login")
	public ModelAndView  login(HttpServletRequest request) {
		String usernname=request.getParameter("uname");
		String pws=request.getParameter("psw");
		User user=dao.login(usernname, pws);
		if(user!=null) {
			modelAndView.setViewName("Home.jsp");
			modelAndView.addObject("result", "Welcome"+user.getName());
		return modelAndView ;
		}else {
			modelAndView.setViewName("Home.jsp");
			modelAndView.addObject("result",  "!!!!wrong password!!!");
			return modelAndView;
		}
	}
}

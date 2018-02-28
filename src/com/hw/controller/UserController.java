package com.hw.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.hw.frame.Biz;
import com.hw.vo.CateCode;
import com.hw.vo.User;

@Controller
public class UserController {
	@Resource(name="userBiz")
	Biz<User,String> biz;
	
	@ModelAttribute("userlist")
	public List<User> getCate(){
		List<User> list = 
				biz.get();
		
		return list;
	}

	@RequestMapping("/userdetail.hw")
	public String getUserDetail(
			@RequestParam(value="id",
			defaultValue="",
			required=true) String uid, 
			Model model) {
		User user = biz.get(uid);
		model.addAttribute("uu", user);
		return "user/detail";
	}
	@RequestMapping("/userupdate.hw")
	public String userUpdate(String id,
			Model model) {
		User user = biz.get(id);
		model.addAttribute("upuser", user);
		return "user/update";
	}
	@RequestMapping("/userupdateimpl.hw")
	public String userUpdateImpl(
			@ModelAttribute("uu") User user) {
		biz.modify(user);
		return "user/detail";
	}
	@RequestMapping("/userdelete.hw")
	public String userDelete(String id) {
		biz.remove(id);
		return "redirect:userlist.hw";
	}
	
	@RequestMapping("/userlist.hw")
	public String getUser(Model model) {
		List<User> list = 
			biz.get();
		model.addAttribute("ulist", list);
		return "user/list";
	}
	
	@RequestMapping(value="/useradd.hw",method=RequestMethod.GET)
	public String addUser() {
		return "user/add";
	}
	
	@RequestMapping(value="/useradd.hw",method=RequestMethod.POST)
	public String addUserImpl(
			@ModelAttribute("uu") User u) {
		biz.register(u);
		
		return "user/detail";
	}
}






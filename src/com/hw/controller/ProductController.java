package com.hw.controller;

import java.io.FileOutputStream;
import java.io.IOException;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.hw.frame.Biz;
import com.hw.vo.Product;

@Controller
public class ProductController {
	@Resource(name="productBiz")
	Biz<Product,Integer> biz;
		
	@RequestMapping("productadd.hw")
	public String add(){
		return "product/add";
	}
	
	// productdelete.hw?id=10
	
	@RequestMapping("productdelete.hw")
	public String delete(int id){
		biz.remove(id);
		return "redirect:productlist.hw";
	}
	@RequestMapping("productaddimpl.hw")
	public String addimpl(Product p,
			Model model){
		
		
		MultipartFile mp = p.getMf();
		String img = mp.getOriginalFilename();
		p.setImgname(img);
		
		biz.register(p);
		
		byte[] data;
		try {
			data = mp.getBytes();
			FileOutputStream out = 
			new FileOutputStream("c:/spring/smvc/web/img/"+img);
			out.write(data);
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		Product product = biz.get(p.getId());
		model.addAttribute("dproduct", product);
		
		return "product/detail";
	}
	
	
	
	
}






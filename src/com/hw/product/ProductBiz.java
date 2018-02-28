package com.hw.product;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hw.frame.Biz;
import com.hw.frame.Dao;
import com.hw.vo.Product;
@Service("productBiz")
public class ProductBiz implements 
Biz<Product,Integer> {
	@Resource(name="productDao")
	Dao<Product,Integer> dao;

	@Override
	public void register(Product t) {
		dao.insert(t);
	}

	@Override
	public void remove(Integer s) {
		dao.delete(s);
	}

	@Override
	public void modify(Product t) {
		dao.update(t);
	}

	@Override
	public Product get(Integer s) {
		return dao.select(s);
	}

	@Override
	public List<Product> get() {
		return dao.select();
	}
	
	
}











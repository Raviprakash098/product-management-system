package com.pms.service;

import java.util.List;

import com.pms.bean.Product;
import com.pms.dao.ProductDao;

public class ProductService {
ProductDao pd = new ProductDao();
	
	public String storeProduct(Product product) {
		if(product.getPrice()<1000) {
			return "Product price > 1000";
		}else if(pd.storeProduct(product)>0) {
			return "Product details stored successfully";
		}else {
			return "Product details didn't store";
		}
	}
	
	public String deleteProduct(int pid) {
		if(pd.deleteProduct(pid)>0) {
			return "Product deleted successfully";
		}else {
			return "Product not present";
		}
	}
	
	public String updateProduct(Product product) {
		if(pd.updateProduct(product)>0) {
			return "Product price updated successfully";
		}else {
			return "Product not present";
		}
	}
	
	public List<Product> findAllProduct() {
		return pd.findAllProducts();
	}
	
	

}

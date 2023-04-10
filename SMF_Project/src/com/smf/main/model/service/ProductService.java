package com.smf.main.model.service;

import static com.smf.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.smf.main.model.dao.ProductDAO;
import com.smf.main.model.vo.Product;

public class ProductService {

    public ArrayList<Product> getProduct() {
        Connection conn = getConnection();
        
		ArrayList<Product> productList = new ProductDAO().getProduct(conn);
		
        close(conn);
        
        return productList;
    }
}


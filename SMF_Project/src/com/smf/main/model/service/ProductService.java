package com.smf.main.model.service;

import java.sql.Connection;
import java.util.List;

import com.smf.main.model.dao.ProductDAO;
import com.smf.main.model.vo.Product;
import com.smf.main.model.JDBCTemplate;

public class ProductService {

    public static List<Product> getProducts() {
        Connection conn = JDBCTemplate.getConnection();
        List<Product> productList = new ProductDAO().getProducts();
        JDBCTemplate.close(conn);
        return productList;
    }
}


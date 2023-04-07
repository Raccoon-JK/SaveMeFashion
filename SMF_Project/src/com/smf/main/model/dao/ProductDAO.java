package com.smf.main.model.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.smf.main.model.vo.Product;

public class ProductDAO {

	public static Connection getConnection() throws SQLException {
	    // JDBC 드라이버를 로드합니다.
	    try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    // 데이터베이스 연결 정보를 지정합니다.
	    String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	    String user = "PASSION";
	    String password = "PASSION";
	    // 데이터베이스에 연결하고 Connection 객체를 반환합니다.
	    Connection conn = DriverManager.getConnection(url, user, password);
	    return conn;
	}


    // 모든 상품 정보를 가져오는 메소드
    public static List<Product> getProducts() {
        List<Product> productList = new ArrayList<>();
        try (Connection conn = getConnection();
             PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM PRODUCT");
             ResultSet rs = pstmt.executeQuery()) {
        	while (rs.next()) {
                Product product = new Product();
                product.setProductName(rs.getString("PRODUCT_NAME"));
                product.setCompanyPrice(rs.getInt("COMPANY_PRICE"));
                product.setTradeCount(rs.getInt("TRADE_COUNT"));
                product.setStatus(rs.getString("STATUS"));
                product.setImagePath(rs.getString("IMG_PATH"));
                product.setBrandName(rs.getString("BRAND_NAME"));
                productList.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return productList;
    }

}







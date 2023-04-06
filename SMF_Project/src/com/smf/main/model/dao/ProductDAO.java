package com.smf.main.model.dao;

import static com.smf.main.model.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.InvalidPropertiesFormatException;
import java.util.List;
import java.util.Properties;

import com.smf.main.model.vo.Product;
import com.smf.main.model.vo.ProductRange;

public class ProductDAO {
	private Properties prop = new Properties();

	public ProductDAO() {
		try {
			prop.loadFromXML(new FileInputStream(
					ProductDAO.class.getResource("/sql/main/product/product-mapper.xml").getPath()));
		} catch (InvalidPropertiesFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public ArrayList<Product> selectList(Connection conn, ProductRange pr) {
		ArrayList<Product> list = new ArrayList<>();
		PreparedStatement pstmt = null;

		ResultSet rset = null;
		String sql = prop.getProperty("selectBestProduct");

		try {
			pstmt = conn.prepareStatement(sql);
			/*
			 * productLimit은 3으로 가정, currentRange1을 요청시 1~3 2를 요청시 4~6 7~9 10~12 13~15
			 */
			int startRange = 1 + 3 * (pr.getCurrentRange() - 1);
			int endRange = 4 + pr.getProductLimit() * (startRange - 1);

			pstmt.setInt(1, startRange);
			pstmt.setInt(2, endRange);

			rset = pstmt.executeQuery();
			while (rset.next()) {
				Product product = new Product(rset.getString("PRODUCT_NAME"), rset.getInt("COMPANY_PRICE"),
						rset.getInt("TRADE_COUNT"), rset.getString("STATUS"), rset.getString("IMG_PATH"));
				list.add(product);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}

		return list;
	}

}

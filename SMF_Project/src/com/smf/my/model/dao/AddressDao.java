package com.smf.my.model.dao;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.InvalidPropertiesFormatException;
import java.util.Properties;

import static com.smf.common.JDBCTemplate.*;
import com.smf.my.model.vo.Address;

public class AddressDao {

	private Properties prop = new Properties();
	
	public AddressDao() {
		String fileName = AddressDao.class.getResource("/sql/my/my-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (InvalidPropertiesFormatException e) {
			e.printStackTrace();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public int insertAddress(Connection conn, Address addr) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String sql = prop.getProperty("insertAddress");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, addr.getUserId());
			pstmt.setString(2, addr.getReceiver());
			pstmt.setString(3, addr.getPhone());
			pstmt.setInt(4, addr.getPostcode());
			pstmt.setString(5, addr.getAddress());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
}

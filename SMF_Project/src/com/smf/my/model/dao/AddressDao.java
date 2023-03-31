package com.smf.my.model.dao;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
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
	
	public Address addressDefault(Connection conn) {
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Address addr = new Address();
		
		String sql = prop.getProperty("addressDefult");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, "hshwan0406@smf.com");
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				addr.setUserId(rset.getString("USER_ID"));
				addr.setReceiver(rset.getString("RECEIVER"));
				addr.setPhone(rset.getString("PHONE"));
				addr.setPostcode(rset.getInt("POSTCODE"));
				addr.setAddress(rset.getString("ADDRESS"));
				addr.setDefaultAddress(rset.getInt("DEFAULT_ADDRESS"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return addr;
	}
	
	public ArrayList<Address> addressList(Connection conn){
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("addressList");
		
		ArrayList<Address> addrList = new ArrayList();
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, "hshwan0406@smf.com");
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Address addr = new Address();
											addr.setUserId(rset.getString("USER_ID"));
											addr.setReceiver(rset.getString("RECEIVER"));
											addr.setPhone(rset.getString("PHONE"));
											addr.setPostcode(rset.getInt("POSTCODE"));
											addr.setAddress(rset.getString("ADDRESS"));
											addr.setDefaultAddress(rset.getInt("DEFAULT_ADDRESS"));
											
				addrList.add(addr);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return addrList;
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

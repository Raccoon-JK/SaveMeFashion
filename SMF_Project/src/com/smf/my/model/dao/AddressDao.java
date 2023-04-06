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
import com.smf.my.model.vo.ReplacePhoneNumber;

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
		Address addr = null;
		
		String sql = prop.getProperty("addressDefult");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, "hshwan0406@smf.com");
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				addr = new Address( rset.getInt("ADDRESS_NO"), 
								    rset.getString("USER_ID"), 
								    rset.getString("RECEIVER"), 
								    ReplacePhoneNumber.repacePhoneNo(rset.getString("PHONE")), 
								    rset.getInt("POSTCODE"), 
								    rset.getString("ADDRESS")
								   );
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
				Address addr = new Address( rset.getInt("ADDRESS_NO"), 
										    rset.getString("USER_ID"), 
										    rset.getString("RECEIVER"), 
										    ReplacePhoneNumber.repacePhoneNo(rset.getString("PHONE")), 
										    rset.getInt("POSTCODE"), 
										    rset.getString("ADDRESS")
										   );
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
	
	public int addressDefaultUpdateY(Connection conn, int addrNo, String userId) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String sql = prop.getProperty("addressDefaultUpdateY");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, addrNo);
			pstmt.setString(2, "hshwan0406@smf.com"); //userId
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	public int addressDefaultUpdateN(Connection conn, String userId) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String sql = prop.getProperty("addressDefaultUpdateN");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, "hshwan0406@smf.com"); //userId
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	public int addressUpdate(Connection conn, Address addr) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String sql = prop.getProperty("addressUpdate");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, addr.getReceiver());
			pstmt.setInt(2, Integer.parseInt(addr.getPhone()));
			pstmt.setInt(3, addr.getPostcode());
			pstmt.setString(4, addr.getAddress());
			pstmt.setInt(5, addr.getAddressNo());
			pstmt.setString(6, addr.getUserId());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	public int addressDelete(Connection conn, int addrNo, String userId) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String sql = prop.getProperty("addressDelete");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, addrNo);
			pstmt.setString(2, "hshwan0406@smf.com"); //userId
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
}

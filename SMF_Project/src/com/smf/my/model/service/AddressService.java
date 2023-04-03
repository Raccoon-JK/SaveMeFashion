package com.smf.my.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import static com.smf.common.JDBCTemplate.*;

import com.smf.my.model.dao.AddressDao;
import com.smf.my.model.vo.Address;

public class AddressService {
	
	public Address addressDefault() {
		
		Connection conn = getConnection();
		
		Address addr = new AddressDao().addressDefault(conn);
		
		close(conn);
		
		return addr;
	}
	
	public ArrayList<Address> addressList(){
		
		Connection conn = getConnection();
		
		ArrayList<Address> addrList = new AddressDao().addressList(conn); 
		
		close(conn);
		
		return addrList;
	}
	
	public int insertAddress(Address addr) {
		
		Connection conn = getConnection();
		
		int result = new AddressDao().insertAddress(conn, addr);
		
		if( result>0 ) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
		
	}
	
	public int addressDefaultUpdate(int addrNo, String userId) {
		
		 Connection conn = getConnection();
		 
		 int result1 = new AddressDao().addressDefaultUpdateN(conn, userId);
		 int result2 = new AddressDao().addressDefaultUpdateY(conn, addrNo, userId);
		 
		 if( result1>0 && result2>0 ) {
			 commit(conn);
		 }else {
			 rollback(conn);
		 }
		 
		 close(conn);
		 
		 return result1 * result2;
	}
	
	public int addressUpdate(Address addr) {
		
		Connection conn = getConnection();
		
		int result = new AddressDao().addressUpdate(conn, addr);
		
		if( result>0 ) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
	
	public int addressDelete(int addrNo, String userId) {
		Connection conn = getConnection();
		
		int result = new AddressDao().addressDelete(conn, addrNo, userId);
		
		if( result>0 ) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
}

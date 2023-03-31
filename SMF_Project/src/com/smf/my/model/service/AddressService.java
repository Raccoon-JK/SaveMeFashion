package com.smf.my.model.service;

import java.sql.Connection;

import static com.smf.common.JDBCTemplate.*;

import com.smf.my.model.dao.AddressDao;
import com.smf.my.model.vo.Address;

public class AddressService {
	
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
}

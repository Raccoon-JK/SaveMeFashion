package com.smf.member.model.service;

import java.sql.Connection;
import java.util.Map;

import static com.smf.common.JDBCTemplate.*;

import com.smf.my.model.dao.AddressDao;
import com.smf.my.model.vo.Address;

public class EnrollService {
	
	
	public boolean checkEnroll(Map<String, String> paramMap) {
		
		
		
		return false;
	}
	public int selectUser(String userId) {
		
		Connection conn = getConnection();
		//int result = new AddressDao().insertAddress(conn, userId);
		int result = 1;
		
		if( result>0 ) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
}

package com.smf.my.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import static com.smf.common.JDBCTemplate.*;

import com.smf.my.model.dao.MyPageDao;
import com.smf.my.model.vo.Account;
import com.smf.my.model.vo.Address;
import com.smf.my.model.vo.Card;

public class MyPageService {
	
	// 주소록
	public Address addressDefault() {
		
		Connection conn = getConnection();
		
		Address addr = new MyPageDao().addressDefault(conn);
		
		close(conn);
		
		return addr;
	}
	
	public ArrayList<Address> addressList(){
		
		Connection conn = getConnection();
		
		ArrayList<Address> addrList = new MyPageDao().addressList(conn); 
		
		close(conn);
		
		return addrList;
	}
	
	public int insertAddress(Address addr) {
		
		Connection conn = getConnection();
		
		int result = new MyPageDao().insertAddress(conn, addr);
		
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
		 
		 int result1 = new MyPageDao().addressDefaultUpdateN(conn, userId);
		 int result2 = new MyPageDao().addressDefaultUpdateY(conn, addrNo, userId);
		 
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
		
		int result = new MyPageDao().addressUpdate(conn, addr);
		
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
		
		int result = new MyPageDao().addressDelete(conn, addrNo, userId);
		
		if( result>0 ) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
	
	// 계좌 및 카드 관리
	
	public Account accountSelect(String userId){
		Connection conn = getConnection();
		
		Account account = new MyPageDao().accountSelect(conn, userId);
		
		close(conn);
		
		return account;
	}
	
	public Card cardSelect(String userId) {
		Connection conn = getConnection();
		
		Card card = new MyPageDao().cardSelect(conn, userId);
		
		close(conn);
		
		return card;
	}
	
	public int accountInsert(Account account) {
		Connection conn = getConnection();
		
		int result = new MyPageDao().accountInsert(conn, account);
		
		if( result>0 ) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
	
	public int accountUpdate(Account account) {
		Connection conn = getConnection();
		
		int result = new MyPageDao().accountUpdate(conn, account);
		
		if( result>0 ) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
	
}

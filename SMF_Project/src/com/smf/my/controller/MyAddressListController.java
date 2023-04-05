package com.smf.my.controller;

import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smf.my.model.service.AddressService;
import com.smf.my.model.vo.Address;
import com.smf.my.model.vo.ReplacePhoneNumber;

/**
 * Servlet implementation class MyAddressListController
 */
@WebServlet("/address.me")
public class MyAddressListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyAddressListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
		Address addrDefault = new AddressService().addressDefault();
		ArrayList<Address> addrList = new AddressService().addressList();
		
		request.setAttribute("addrDefault", addrDefault);
		request.setAttribute("addrList", addrList);dsfadf
		
		request.getRequestDispatcher("/views/my/mypageAddress.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}

package com.smf.my.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smf.my.model.service.MyPageService;
import com.smf.my.model.vo.Account;
import com.smf.my.model.vo.Card;

/**
 * Servlet implementation class MyPageAccountsCard
 */
@WebServlet("/mypageaccountscard.me")
public class MyPageAccountsCardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyPageAccountsCardController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		Member m = request.getSession().getAttribute("loginUser");
		String userId = "hshwan@smf.com";
		
		Account account = new MyPageService().accountSelect(userId);
		Card card = new MyPageService().cardSelect(userId);
		
		request.setAttribute("account", account);
		request.setAttribute("card", card);
		
		request.getRequestDispatcher("views/my/mypageAccountsCard.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

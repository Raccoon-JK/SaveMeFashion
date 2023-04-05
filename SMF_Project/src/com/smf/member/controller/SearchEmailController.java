package com.smf.member.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.smf.member.model.service.MemberService;

/**
 * Servlet implementation class loginController
 */
@WebServlet("/searchEmail.me")
public class SearchEmailController extends HttpServlet {
   private static final long serialVersionUID = 1L;

   
   	MemberService ms = new MemberService();
   	
   	
   	
    /**
     * Default constructor. 
     */
    public SearchEmailController() {
        // TODO Auto-generated constructor stub
    }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
   }

   /**
    * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	  
	  request.setCharacterEncoding("UTF-8");
      System.out.println("TEST");
      String uphone = request.getParameter("uphone");
      System.out.println(uphone);
      String email = new MemberService().searchEmail(uphone);
      System.out.println(email);
      
      
   }

}
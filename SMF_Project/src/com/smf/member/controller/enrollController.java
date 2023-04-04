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

import com.smf.member.model.service.EnrollService;

/**
 * Servlet implementation class loginController
 */
@WebServlet("/enroll.do")
public class enrollController extends HttpServlet {
   private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public enrollController() {
        // TODO Auto-generated constructor stub
    }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      // TODO Auto-generated method stub
      response.getWriter().append("Served at: ").append(request.getContextPath());
   }

   /**
    * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      // TODO Auto-generated method stub
      
	   
	   request.setCharacterEncoding("UTF-8");
      
	   String email = request.getParameter("email") == null ? "" : request.getParameter("email");
	   String name = request.getParameter("name") == null ? "" : request.getParameter("name");
	   String password = request.getParameter("password") == null ? "" : request.getParameter("password");
	   String hp = request.getParameter("hp") == null ? "" : request.getParameter("hp");
	   String yy = request.getParameter("yy") == null ? "" : request.getParameter("yy"); 
	   String mm = request.getParameter("mm") == null ? "" : request.getParameter("mm"); 
       String dd = request.getParameter("dd") == null ? "" : request.getParameter("dd"); 

       Map<String, String> paramMap = new HashMap<String, String>();
       paramMap.put("email", email);
       paramMap.put("name", name);
       paramMap.put("password", password);
       paramMap.put("hp", hp);
       paramMap.put("yy", yy);
       paramMap.put("mm", mm);
       paramMap.put("dd", dd);
      
       boolean checkResult = new EnrollService().checkEnroll(paramMap);
       if(checkResult) {
    	   //회원가입 진행
    	   
    	   	
    	   
    	   
       }else {
    	   //회원 가입 실패
    	   response.setContentType("text/html; charset=UTF-8");
    	   PrintWriter out = response.getWriter();
    	   out.println("<script>alert('계정이 이미 등록 되어 있습니다.');history.back();</script>");
    	   out.flush();
       }
   }

}
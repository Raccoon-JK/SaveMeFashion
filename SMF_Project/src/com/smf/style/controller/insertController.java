package com.smf.style.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.oreilly.servlet.MultipartRequest;
import com.smf.common.MyFileRenamePolicy;
import com.smf.member.model.vo.Member;
import com.smf.style.model.service.StyleService;
import com.smf.style.model.vo.PostImg;
import com.smf.style.model.vo.StylePost;

/**
 * Servlet implementation class insertController
 */
@WebServlet("/styleInsert.me")
public class insertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public insertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("views/style/insertPage.jsp").forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(ServletFileUpload.isMultipartContent(request)) {
			
			// 1_1. 전송용량제한
			int maxSize = 10 * 1024 * 1024;
			
			// 1_2. 저장할 폴더의 물리적 경로
			String savePath = request.getSession().getServletContext().getRealPath("/upload/");
			
			// 2. 전달된 파일명 수정작업후 서버에 업로드
			MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
			
			// 3. db에 저장
			// Board에 들어갈 값들 뽑아오기
			StylePost sp = new StylePost();
			sp.setPostNo(Integer.parseInt(multi.getParameter("postNo")));
			sp.setContent(multi.getParameter("content"));
			sp.setUserId( ((Member) request.getSession().getAttribute("loginUser")).getUserId()+"" );
			
			//Attachment테이블에 여러번 insert할 데이터를 뽑기
			//단, 여러개의 첨부파일이 있을것이기 때문에 attahment들을 ArrayList에 담을예정 => 반드시 1개이상은 담김(대표이미지)
			
			ArrayList<PostImg> list = new ArrayList();
			
			for(int i = 1; i<=4; i++) {// 파일의갯수는 최대 4개이기때문에 4번반복시킴
				
				String key = "file"+i;// file1, file2, file3, file4
				
				if(multi.getOriginalFileName(key) != null) { // 넘어온 첨부파일이 있는 경우
					// 첨부파일 있는 case
					// Attachment객체 생성 + 원본명,수정명,저장경로 + 파일레벨 담기.
					// list에 추가해주기.
					PostImg pi = new PostImg();
					pi.setOriginName(multi.getOriginalFileName(key));
					pi.setImgName(multi.getFilesystemName(key));
					pi.setImgPath("/upload/");
					
					list.add(pi);
				}
			}
			
			int result = new StyleService().insertPostImgList(sp, list);
			
			if(result > 0) { // 성공 -> list.th를 요청
				request.getSession().setAttribute("alertMsg", "성공적으로 업로드 되었습니다");
				response.sendRedirect(request.getContextPath()+"/userPage.me");
			}else {
				request.setAttribute("errorMsg", "사진 업로드 실패..");
				request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
			}
			
		}
	}

}

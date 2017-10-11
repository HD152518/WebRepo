package org.dimigo.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.dimigo.vo.UserVO;
import org.json.simple.JSONObject;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/bloglogin")
public class BlogLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BlogLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// jsp ������
		RequestDispatcher rd = request.getRequestDispatcher("myblog/login.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("application/json;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		System.out.printf("id: %s , pwd: %s\n", id, pwd);
			
		boolean result;
		
		if(id.equals("test@naver.com")) {
			result=true;
			System.out.println("통과");
			

	    	HttpSession session = request.getSession();
	    	UserVO user = new UserVO();
	    	user.setId(id);
	    	user.setName("테스트 계정");
	    	user.setNickname("테스트");
	    	
	    	session.setAttribute("user", user);
		} else {
			result=false;
			System.out.println("오류");
		}
		
		Gson gson = new Gson();
		JsonObject obj = new JsonObject();
		
	    if(result) {
	    	obj.addProperty("msg", "success");
	    } else {
	    	obj.addProperty("msg", "error");
	    }
	    
		out.write(gson.toJson(obj));
		out.close();
	}
}

package com.jsplec.base;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Sum100
 */
@WebServlet("/Sum100")
public class Sum100 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Sum100() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {//request랑 response를 가져와서 사용
		// TODO Auto-generated method stub
		int total=0;
		for(int i=1;i<=100;i++) {
			total+=i;
		}
		request.setAttribute("result", total);
		
		RequestDispatcher rd=request.getRequestDispatcher("sum100.jsp");
		rd.forward(request,response);//이걸 작성해야 받는 쪽에서 ${result}로 표현이 가능함
	}

}

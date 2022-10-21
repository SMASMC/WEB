package com.jsplec.base;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MulTable_01
 */
@WebServlet("/MulTable_01")
public class MulTable_01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MulTable_01() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();// out을 설정 jsp에서 out.println();똑같이 활용하기 위해서 선언

		String num=request.getParameter("num");
		int num1=Integer.parseInt(num);
		
		out.println("<html>");
		out.println("<head>");
		out.println("</head>");
		out.println("<body>");
		out.println("<table cellpadding=5>");
		
		for(int i=1;i<=9;i++) {
			out.println("<tr><td>"+num1+"X"+i+"="+(i*num1)+"</td>"+"<td>"+(num1+1)+"X"+i+"="+(i*(num1+1))+"</td>"+
					"<td>"+(num1+2)+"X"+i+"="+(i*(num1+2))+"</td></tr>"+"<br>");
			
		}
		
		out.println("</table>");
		out.println("</body>");
		out.println("</html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}



package com.jsplec.base;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class dec_add
 */
@WebServlet("/dec_add")
public class dec_add extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public dec_add() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)//doGet은 보여주기
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("Hello World!");

		response.setContentType("text/html");// <%@ page language="java" contentType="text/html; charset=UTF-8" jsp파일에
												// 있는 유형을 가져옴

		PrintWriter out = response.getWriter();// out을 설정 jsp에서 out.println();똑같이 활용하기 위해서 선언

		out.println("<html>");
		out.println("<head>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1>Hello World!</h1>");

		out.println("2+1="+sum(2,1)+"<br>");//sum(2,1)이렇게 선언하면 밑에 메소드를 호출할 수 있음
		out.println("3+1="+sum(3,1)+"<br>");
		out.println("4+1="+sum(4,1)+"<br>");
		out.println("5+1="+sum(5,1)+"<br>");
		
		out.println("</body>");
		out.println("</html>");
		

//		response.getWriter().append("Served at: ").append(request.getContextPath()); 사용하지 않는 것임
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)//doPost는 가리기
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	private int sum(int num1, int num2) {

		return (num1 + num2);
	}

}

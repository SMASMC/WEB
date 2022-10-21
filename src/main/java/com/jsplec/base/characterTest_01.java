package com.jsplec.base;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class characterTest_01
 */
@WebServlet("/characterTest_01")
public class characterTest_01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public characterTest_01() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		
		String name=request.getParameter("username");
		String colour=request.getParameter("colour");
		String animal=request.getParameter("animal");
		String []food=request.getParameterValues("food");
//		String likefood=Arrays.toString(food); 배열안에 있는 전체 내용을 []안에 다 뽑아서 출력하게 해주는 역할
		
		out.println("<html>");
		out.println("<head>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1>"+"성격 테스트"+"</h1>");
		out.println(name+"님의 성격 테스트 결과<br>");
		out.println(colour+"을 좋아하는 당신은 "+animal+"그리고 ");
		for(int i=0;i<food.length;i++) {
			if(i<food.length-1) {
			out.println(food[i]+"과");
			}
			else {
			out.println(food[i]);
			}
		}
		out.println(" 을 좋아하는 성격입니다.");
		out.println();
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

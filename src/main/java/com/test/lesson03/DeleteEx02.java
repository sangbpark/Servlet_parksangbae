package com.test.lesson03;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson03/delete_ex02")
public class DeleteEx02 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		String deleteQuery = "delete from `new_user` where `id` =" + id ;
		try {
			ms.update(deleteQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		ms.disconnect();
		
		response.sendRedirect("/lesson03/ex02_1.jsp");
	}
}

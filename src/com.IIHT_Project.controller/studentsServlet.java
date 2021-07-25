package com.IIHT_Project.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.IIHT_Project.dao.studentsdao;
import com.IIHT_Project.model.students;

/**
 * Servlet implementation class studentsServlet
 */
@WebServlet("/register")
public class studentsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	private studentsdao studentsdao=new studentsdao();
    public studentsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		 RequestDispatcher dispatcher=request.getRequestDispatcher("/WEB-INF/views/studentsregister.jsp");
		 dispatcher.forward(request,response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String first_Name = request.getParameter("first_Name");
        String last_Name = request.getParameter("last_Name");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String address = request.getParameter("address");
        String contact = request.getParameter("contact");
        students students = new students();
        students.setFirst_Name(first_Name);
        students.setLast_Name(last_Name);
        students.setUsername(username);
        students.setPassword(password);
        students.setContact(contact);
        students.setAddress(address);
        
        try {
            studentsdao.registerEmployee(students);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        RequestDispatcher dispatcher=request.getRequestDispatcher("/WEB-INF/views/studentdetails.jsp");
        dispatcher.forward(request,response);


	}

}

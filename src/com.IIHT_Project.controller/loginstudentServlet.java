package com.IIHT_Project.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.IIHT_Project.dao.loginStudentdao;
import com.IIHT_Project.model.loginstudent;




@WebServlet("/studentLogin")
public class loginstudentServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private loginStudentdao loginDao;

    public void init() {
        loginDao = new loginStudentdao();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
			
		 RequestDispatcher dispatcher=request.getRequestDispatcher("/WEB-INF/views/studentLogin.jsp");
		 dispatcher.forward(request,response);

	}
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        loginstudent loginBean = new loginstudent();
        loginBean.setUsername(username);
        loginBean.setPassword(password);
        HttpSession session=request.getSession();	

        try {
            if (loginDao.validate(loginBean)) {
                //HttpSession session = request.getSession();
                session.setAttribute("username",username);
            	
            	RequestDispatcher dispatcher=request.getRequestDispatcher("/WEB-INF/views/ViewCourse.jsp");
       		 dispatcher.forward(request,response);
            } else {
                //HttpSession session = request.getSession();
                //session.setAttribute("user", username);
                response.sendRedirect("studentLogin.jsp");
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
      
    }
}

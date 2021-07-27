package com.IIHT_Project.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.IIHT_Project.dao.LoginAdminDao;
import com.IIHT_Project.model.LoginAdmin;


@WebServlet("/AdminLogin")
public class LoginAdminServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private LoginAdminDao loginDao;

    public void init() {
        loginDao = new LoginAdminDao();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
// TODO Auto-generated method stub
response.getWriter().append("Served at: ").append(request.getContextPath());
RequestDispatcher dispatcher=request.getRequestDispatcher("/WEB-INF/views/LoginAdmin.jsp");
dispatcher.forward(request,response);
}

   
   
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        LoginAdmin loginBean = new LoginAdmin();
        loginBean.setUsername(username);
        loginBean.setPassword(password);
        HttpSession session=request.getSession();

        try {
            if (loginDao.validate(loginBean)) {
                //HttpSession session = request.getSession();
                // session.setAttribute("username",username);
            	 session.setAttribute("username",username);
            RequestDispatcher dispatcher=request.getRequestDispatcher("/WEB-INF/views/Adminnext1.jsp");
        dispatcher.forward(request,response);
        } else {
                //HttpSession session = request.getSession();
        	
                response.sendRedirect("LoginAdmin.jsp");
        //System.out.println("wrong");
        }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}

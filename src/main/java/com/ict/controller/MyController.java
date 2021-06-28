package com.ict.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.model.Command;
import com.ict.model.MainCommand;
import com.ict.model.PickCommand;
import com.ict.model.Search_ChooseCommand;

@WebServlet("/MyController")
public class MyController extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException 
	{
		doPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException 
	{
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		String cmd = request.getParameter("cmd");
		Command comm = null;
		
		if (cmd.equalsIgnoreCase("main")) 
		{
			comm = new MainCommand();
		}else if (cmd.equalsIgnoreCase("search_choose"))
		{
			comm = new Search_ChooseCommand();
		}else if(cmd.equalsIgnoreCase("pick"))
		{
			comm = new PickCommand();
		}
		
		String path = comm.exec(request, response);
		request.getRequestDispatcher(path).forward(request, response);
		
		
	}

}

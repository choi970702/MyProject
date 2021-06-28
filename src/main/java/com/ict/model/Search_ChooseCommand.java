package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Search_ChooseCommand implements Command
{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) 
	{
		String choice = request.getParameter("choice");
		String choose = request.getParameter("choose");
		
		request.getSession().setAttribute("choice", choice);
		request.getSession().setAttribute("choose", choose);
		
		return "view/search2.jsp";
	}
}

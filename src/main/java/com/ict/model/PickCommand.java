package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PickCommand implements Command
{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) 
	{
		String food_pick = request.getParameter("food_pick");
		String restaurant_pick = request.getParameter("restaurant_pick");
		
		request.getSession().setAttribute("food_pick", food_pick);
		request.getSession().setAttribute("restaurant_pick", restaurant_pick);
		
		return "view/food_restaurant2.jsp";
	}
}

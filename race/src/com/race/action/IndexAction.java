package com.race.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class IndexAction implements RaceAction{

	@Override
	public String execute(HttpServletRequest requset,
			HttpServletResponse response) throws ServletException, IOException {

		String url = "/index.jsp";
		
		return url;
	}

}

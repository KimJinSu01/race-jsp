package com.race.action.productDetail;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.race.action.RaceAction;

public class ProductElectric2Action implements RaceAction{

	@Override
	public String execute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String url = "/product/electricDetail2.jsp";
		return url;
	}
	
}

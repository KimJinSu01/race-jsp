package com.race.action.productDetail;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.race.action.RaceAction;

public class ProductMtb4Action implements RaceAction{

	@Override
	public String execute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String url = "/product/mtbDetail4.jsp";
		return url;
	}
	
}
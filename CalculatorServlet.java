package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


public class CalculatorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PrintWriter pw;
	Double result;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		double num1 = Double.parseDouble(request.getParameter("num1"));
		double num2 = Double.parseDouble(request.getParameter("num2"));
		char operator = request.getParameter("operator").charAt(0);

		switch (operator) {
		case '+':
			result = num1 + num2;
			break;
		case '-':
			result = num1 - num2;
			break;
		case '*':
			result = num1 * num2;
			break;
		case '/':
			if (num2 != 0) {
				result = num1 / num2;
			} else {
				result = null;
			}
			break;
		}
		request.getSession().setAttribute("result", result);
       response.sendRedirect("result.jsp");
	}

}


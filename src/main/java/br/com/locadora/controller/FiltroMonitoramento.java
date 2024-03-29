package br.com.locadora.controller;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

@WebFilter("/main")
public class FiltroMonitoramento implements Filter{

	@Override
	public void destroy() {
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
		long antes = System.currentTimeMillis();
		
		String paramAcao = request.getParameter("action");
		
		chain.doFilter(request, response);
		
		long depois = System.currentTimeMillis();
		
		System.out.println(paramAcao+" tempo de execu��o " + (depois-antes));
		
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		
	}

}

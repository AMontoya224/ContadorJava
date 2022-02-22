package com.codingdojo.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ContadorController {
	
	public int counter;
	
	@RequestMapping( value="/", method=RequestMethod.GET )
	public String welcome( HttpSession session ) {
		
		if( session.getAttribute("counter") == null ) {
			counter = 0;
		}
		
		counter += 1;
		session.setAttribute( "counter", counter );
		return "welcome.jsp";
	}
	
	@RequestMapping( value="/x2", method=RequestMethod.GET )
	public String welcome2( HttpSession session ) {
		
		if( session.getAttribute("counter") == null ) {
			counter = 0;
		}
		
		counter += 2;
		session.setAttribute( "counter", counter );
		return "welcome2.jsp";
	}
	
	@RequestMapping( value="/counter", method=RequestMethod.GET )
	public String counter( HttpSession session ) {
		
		if( session.getAttribute("counter") == null ) {
			counter = 0;
		}
		session.setAttribute( "counter", counter );
				
		return "counter.jsp";
	}
	
	@RequestMapping( value="/logout", method=RequestMethod.GET )
	public String logout( HttpSession session ) {
		session.removeAttribute( "counter" );
		
		return "redirect:/counter";
	}
}

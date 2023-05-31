package com.dentbill;


import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class HomeController {
	
	/************************************************
	 * 1. 홈화면
	 * 요청 url : http://localhost:8080/
	************************************************/
	@RequestMapping("/")
	public String home(Locale locale, Model model,@RequestParam(required = false, defaultValue = "") String payerrormsg) {
		return "home";
	}
	
}

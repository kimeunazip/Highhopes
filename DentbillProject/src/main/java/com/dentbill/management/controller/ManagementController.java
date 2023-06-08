package com.dentbill.management.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ManagementController {
	
	//거래처관리
	@GetMapping("/partnersManagement")
    public String partnersManagement(Model model) {
    	
        return "management/partnersManagement";
    }
}

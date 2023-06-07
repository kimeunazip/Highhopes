package com.dentbill.transactionReceipt.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class transactionReciptController {

	@GetMapping("/transactionReciept")
    public String transactionReciept(Model model) {
    	
        return "transactionReciept";
    }
}

package com.dentbill.transaction.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class transactionController {

	//접수명단
	@GetMapping("/transactionReciept")
    public String transactionReciept(Model model) {
    	
        return "transaction/transactionReciept";
    }
	
	//거래명세서
	@GetMapping("/transactionStatement")
    public String transactionStatement(Model model) {
    	
        return "transaction/transactionStatement";
    }
}

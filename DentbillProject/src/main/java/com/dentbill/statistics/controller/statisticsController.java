package com.dentbill.statistics.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class statisticsController {
	
		//매출 통계
		@GetMapping("/salesStatistics")
	    public String salesStatistics(Model model) {
	    	
	        return "statistics/salesStatistics";
	    }
		//거래 통계
		@GetMapping("/transationStatistics")
	    public String transationStatistics(Model model) {
	    	
	        return "statistics/transationStatistics";
	    }
		
}

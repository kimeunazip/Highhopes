package com.dentbill.transaction.controller;

import java.io.Console;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.dentbill.businessPartners.service.BusinessPartnerService;
import com.dentbill.businessPartners.vo.BusinessPartnerVO;
import com.dentbill.dentalProsthetics.service.DentalProstheticsService;
import com.dentbill.dentalProsthetics.vo.DentalProstheticsVO;
import com.dentbill.transaction.service.TransactionService;
import com.dentbill.transaction.vo.TransactionVO;

import lombok.Setter;


@Controller
public class transactionController {
	
	@Setter(onMethod_ = @Autowired)
	public BusinessPartnerService bPartnerService;
	
	@Setter(onMethod_ = @Autowired)
	public DentalProstheticsService prostheticsService;
	
	
	@Setter(onMethod_ = @Autowired)
	public TransactionService transactionService;

	//접수명단
	@GetMapping("/transactionReciept")
    public String transactionReciept(Model model) {
		
		List<BusinessPartnerVO> partnerList = bPartnerService.partnersList();
    	if(partnerList != null) {
    		model.addAttribute("partnerList",partnerList);
    	}
    	
    	List<DentalProstheticsVO> prostheticsList = prostheticsService.prostheticsList();
    	if(prostheticsList != null) {
    		model.addAttribute("prostheticsList",prostheticsList);
    	}
        return "transaction/transactionReciept";
    }
	
	//접수등록
	@PostMapping(value ="/transactinoInsert")
	public String transactinoInsert(@ModelAttribute TransactionVO tvo,Model model) {
		System.out.println("tvo"+tvo.toString());
		int result = transactionService.transactinoInsert(tvo);
		String message ="";
		
		if(result == 1) {
			message = "정상 등록되었습니다.";
			model.addAttribute("message", message);
		}else {
			message = "죄송합니다.다시 시도해주세요.";
			model.addAttribute("message", message);
		}
		return "redirect:/transactionReciept";
	}
	
	
	//거래명세서
	@GetMapping("/transactionStatement")
    public String transactionStatement(Model model) {
        return "transaction/transactionStatement";
    }
}

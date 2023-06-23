package com.dentbill.transaction.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.dentbill.businessPartners.service.BusinessPartnerService;
import com.dentbill.businessPartners.vo.BusinessPartnerVO;
import com.dentbill.dentalProsthetics.service.DentalProstheticsService;
import com.dentbill.dentalProsthetics.vo.DentalProstheticsVO;

import lombok.Setter;


@Controller
public class transactionController {
	
	@Setter(onMethod_ = @Autowired)
	public BusinessPartnerService bPartnerService;
	
	@Setter(onMethod_ = @Autowired)
	public DentalProstheticsService prostheticsService;

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
	
	//거래명세서
	@GetMapping("/transactionStatement")
    public String transactionStatement(Model model) {
    	
        return "transaction/transactionStatement";
    }
}

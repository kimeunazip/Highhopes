package com.dentbill.businessPartners.controller;

import org.springframework.stereotype.Controller;

import com.dentbill.businessPartners.service.BusinessPartnerService;

import lombok.Setter;

@Controller
public class BusinessPartenrController {
	
	@Setter
	public BusinessPartnerService bPartnerService;
	
}

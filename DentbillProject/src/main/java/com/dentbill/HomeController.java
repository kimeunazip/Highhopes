package com.dentbill;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.dentbill.businessPartners.service.BusinessPartnerService;
import com.dentbill.businessPartners.vo.BusinessPartnerVO;

import lombok.Setter;

@Controller
public class HomeController {
	
	@Setter
	public BusinessPartnerService bPartnerService;

    @GetMapping("/")
    public String home(Model model) {
    	List<BusinessPartnerVO> partnerList = bPartnerService.partnersList();
    	model.addAttribute("partnerList",partnerList);
    	
        return "home";
    }

}

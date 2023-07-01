package com.dentbill;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.dentbill.businessPartners.service.BusinessPartnerService;
import com.dentbill.businessPartners.vo.BusinessPartnerVO;

import lombok.Setter;

@Controller
public class HomeController {
	
	@Setter(onMethod_ = @Autowired)
	public BusinessPartnerService bPartnerService;

    @GetMapping("/login")
    public String login(Model model) {
    	
        return "auth/login";
    }
    
    @GetMapping("/afterLogin")
    public String home(Model model) {
    	List<BusinessPartnerVO> partnerList = bPartnerService.partnersList();
    	if(partnerList != null) {
    		model.addAttribute("partnerList",partnerList);
    	}
    	
        return "home";
    }
    
    @GetMapping("/")
    public String landingPage(Model model) {
        return "landing/landingPage";
    }

}

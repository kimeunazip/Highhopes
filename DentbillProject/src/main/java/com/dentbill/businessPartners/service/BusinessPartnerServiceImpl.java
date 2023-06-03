package com.dentbill.businessPartners.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dentbill.businessPartners.dao.BusinessPartnerDAO;
import com.dentbill.businessPartners.vo.BusinessPartnerVO;

import lombok.Setter;

@Service
public class BusinessPartnerServiceImpl implements BusinessPartnerService {
	
	@Setter(onMethod_ = @Autowired)
	private BusinessPartnerDAO bPartnerDao;
	
	//거래처목록
	@Override
	public List<BusinessPartnerVO> partnersList() {
		List<BusinessPartnerVO> partnerList = bPartnerDao.partnersList();
		return partnerList;
	}

}

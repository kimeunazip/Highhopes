package com.dentbill.businessPartners.service;

import java.util.List;

import com.dentbill.businessPartners.vo.BusinessPartnerVO;

public interface BusinessPartnerService {
		//거래처등록 Create
		//거래처목록 Read(List)
		public List<BusinessPartnerVO> partnersList();
		//거래처상세정보 Read(Detail)
		//거래처수정 Update
		//거래처삭제 Delete
}

package com.dentbill.businessPartners.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.dentbill.businessPartners.vo.BusinessPartnerVO;

@Mapper
public interface BusinessPartnerDAO {
	
	//거래처등록 Create
	//거래처목록 Read 
	public List<BusinessPartnerVO> partnersList();
	//거래처상세정보 Read
	//거래처수정 Update
	//거래처삭제 Delete
}

package com.dentbill.businessPartners.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode(callSuper = false)
public class BusinessPartnerVO {
	//거래처아이디,거래처명,거래처유형
	private String partner_id="";
	private String partner_name="";
	private String partner_type="";
}

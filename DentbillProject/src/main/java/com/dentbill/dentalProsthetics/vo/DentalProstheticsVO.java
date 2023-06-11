package com.dentbill.dentalProsthetics.vo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode(callSuper = false)
public class DentalProstheticsVO {
	//보철아이디,보철명,거래처아이디(FK),개당수가
	private String prosthetic_id = "";
	private String prosthetic_name = "";
	private String partner_id = "";
	private int prosthetic_unit_price = 0;
	
}

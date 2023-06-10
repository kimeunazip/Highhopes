package com.dentbill.dentalProsthetics.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class DentalProstheticsVO {
	
	private String prosthetic_id = "";
	private String prosthetic_name = "";
	private String partner_id = "";
	private int prosthetic_unit_price = 0;
	
}

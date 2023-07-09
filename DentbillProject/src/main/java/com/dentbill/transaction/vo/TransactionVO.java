package com.dentbill.transaction.vo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode(callSuper = false)
public class TransactionVO{
	
	//접수내용 10개컬럼
	private long bill_id = 0;
	private String reg_date = "";
	private String exp_date = "";
	private String patient_name = "";
	private String partner_id = "";
	private String prosthetic_id = "";
	private String formula_id = "";
	private int amount = 0;
	private String shade = "";
	private String memo = "";
	private String prosthetic_name = "";
	private String partner_name = "";
}

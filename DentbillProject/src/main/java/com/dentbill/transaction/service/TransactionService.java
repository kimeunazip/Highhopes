package com.dentbill.transaction.service;

import java.util.List;

import com.dentbill.transaction.vo.TransactionVO;

public interface TransactionService {
	
		//접수명단 목록
		public List<TransactionVO> transactionList(String sysdate);
		
		//접수명단 등록
		public int transactinoInsert(TransactionVO tvo);
}

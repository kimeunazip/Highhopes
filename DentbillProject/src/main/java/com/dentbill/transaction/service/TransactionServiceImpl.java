package com.dentbill.transaction.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dentbill.transaction.dao.TransactionDAO;

import lombok.Setter;

@Service
public class TransactionServiceImpl implements TransactionService {
	
	@Setter(onMethod_ = @Autowired)
	private TransactionDAO transactionDao;
	
	@Override
	public int transactinoInsert() {
		int transactionInsert = transactionDao.transactinoInsert();
		return transactionInsert;
	}
	
}

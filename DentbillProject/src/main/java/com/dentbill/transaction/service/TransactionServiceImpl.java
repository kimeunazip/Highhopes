package com.dentbill.transaction.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dentbill.transaction.dao.TransactionDAO;
import com.dentbill.transaction.vo.TransactionVO;

import lombok.Setter;

@Service
public class TransactionServiceImpl implements TransactionService {
	
	@Setter(onMethod_ = @Autowired)
	private TransactionDAO transactionDao;
	
	@Override
	public int transactinoInsert(TransactionVO tvo) {
		int result = transactionDao.transactinoInsert(tvo);
		return result;
	}
	
}

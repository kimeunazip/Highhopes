package com.dentbill.transaction.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dentbill.transaction.dao.TransactionDAO;
import com.dentbill.transaction.vo.TransactionVO;

import lombok.Setter;

@Service
public class TransactionServiceImpl implements TransactionService {
	
	@Setter(onMethod_ = @Autowired)
	private TransactionDAO transactionDao;
	
	//접수명단 목록
	@Override
	public List<TransactionVO> transactionList(String sysdate) {
		List<TransactionVO> transactionList = transactionDao.transactionList(sysdate);
		return transactionList;
	}
	
	//접수명단 등록
	@Override
	public int transactinoInsert(TransactionVO tvo) {
		int result = transactionDao.transactinoInsert(tvo);
		return result;
	}

	
}

package com.dentbill.transaction.dao;

import org.apache.ibatis.annotations.Mapper;

import com.dentbill.transaction.vo.TransactionVO;


@Mapper
public interface TransactionDAO {
	
	//접수명단 등록
	public int transactinoInsert(TransactionVO tvo);
	
}

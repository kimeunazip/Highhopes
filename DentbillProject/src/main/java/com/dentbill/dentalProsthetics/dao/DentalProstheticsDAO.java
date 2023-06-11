package com.dentbill.dentalProsthetics.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.dentbill.dentalProsthetics.vo.DentalProstheticsVO;

@Mapper
public interface DentalProstheticsDAO {
	
	//보철목록(read)
	public List<DentalProstheticsVO> prostheticsList();

}

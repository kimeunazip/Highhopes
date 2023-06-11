package com.dentbill.dentalProsthetics.service;

import java.util.List;

import com.dentbill.dentalProsthetics.vo.DentalProstheticsVO;

public interface DentalProstheticsService {
	
	//보철목록(read)
	public List<DentalProstheticsVO> prostheticsList();
}

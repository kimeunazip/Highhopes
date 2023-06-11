package com.dentbill.dentalProsthetics.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dentbill.dentalProsthetics.dao.DentalProstheticsDAO;
import com.dentbill.dentalProsthetics.vo.DentalProstheticsVO;

import lombok.Setter;

@Service
public class DentalProstheticsServiceImpl implements DentalProstheticsService {

	@Setter(onMethod_ = @Autowired)
	private DentalProstheticsDAO prostheticsDao;
	
	@Override
	public List<DentalProstheticsVO> prostheticsList() {
		List<DentalProstheticsVO> prostheticsList = prostheticsDao.prostheticsList();
		return prostheticsList;
	}
	
}

package com.addong.book.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.addong.book.dao.RentBookDao;
import com.addong.book.models.RentBookDto;
import com.addong.book.service.RentBookService;

@Service
public class RentBookServiceImplV1 implements RentBookService{

	private final RentBookDao rentBookDao;
	
	public RentBookServiceImplV1(RentBookDao rentBookDao) {
		this.rentBookDao = rentBookDao;
	}

	@Override
	public List<RentBookDto> selectAll() {
		// TODO Auto-generated method stub
		return rentBookDao.selectAll();
	}
	

}

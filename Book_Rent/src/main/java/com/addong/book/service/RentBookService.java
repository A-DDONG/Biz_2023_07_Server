package com.addong.book.service;

import java.util.List;

import com.addong.book.models.RentBookDto;

public interface RentBookService {
	public List<RentBookDto> selectAll();
}

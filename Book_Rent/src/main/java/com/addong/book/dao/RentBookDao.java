package com.addong.book.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.addong.book.models.RentBookDto;

public interface RentBookDao {
	
	@Select(" SELECT * FROM tbl_rent_book ")
	public List<RentBookDto> selectAll();
}

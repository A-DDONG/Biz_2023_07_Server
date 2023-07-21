package com.addong.book.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.addong.book.models.BookDto;

public interface BookDao {
	
	@Select(" SELECT * FROM tbl_books ")
	public List<BookDto> selectAll();
	
	public int insert(BookDto bookDto);
}

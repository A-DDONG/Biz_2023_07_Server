package com.addong.book.service;

import java.util.List;

import com.addong.book.models.BookDto;

public interface BookService {
	

	public List<BookDto> selectAll();

	public int insert(BookDto bookDto);
	
	public BookDto findById(String id);
	public int update(BookDto dto);
	public int delete(String id);
}

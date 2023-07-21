package com.addong.book.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.addong.book.dao.BookDao;
import com.addong.book.models.BookDto;
import com.addong.book.service.BookService;

@Service
public class BookServiceImplV1 implements BookService{

	private final BookDao bookDao;
	
	
	public BookServiceImplV1(BookDao bookDao) {
		this.bookDao = bookDao;
	}


	@Override
	public List<BookDto> selectAll() {
		return bookDao.selectAll();
	}


	@Override
	public int insert(BookDto bookDto) {
		return bookDao.insert(bookDto);
	}
	
	
}

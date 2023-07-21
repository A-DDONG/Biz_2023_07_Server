package com.addong.book.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.addong.book.models.BookDto;
import com.addong.book.models.RentBookDto;
import com.addong.book.models.UserDto;
import com.addong.book.service.BookService;
import com.addong.book.service.RentBookService;
import com.addong.book.service.UserService;

@Controller
public class HomeController {
	
	private final BookService bookService;
	private final UserService userService;
	private final RentBookService rentBookService;

	public HomeController(BookService bookService, UserService userService, RentBookService rentBookService) {
		this.bookService = bookService;
		this.userService = userService;
		this.rentBookService = rentBookService;
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(@ModelAttribute("BOOK") BookDto bookDto, Model model) {
		List<BookDto> bookList = bookService.selectAll();
		List<UserDto> userList = userService.selectAll();
		List<RentBookDto> rentBookList = rentBookService.selectAll();

		model.addAttribute("BOOK_LIST", bookList);
		model.addAttribute("USER_LIST", userList);
		model.addAttribute("RENT_BOOK_LIST", rentBookList);
		return "home";
	}
	
	@RequestMapping(value="/input",method=RequestMethod.GET)
	public String input() {
		return "/input";
	}
	
	@RequestMapping(value="/input",method=RequestMethod.POST)
	public String input(@ModelAttribute("BOOK") BookDto bookDto) {
		
		int result = bookService.insert(bookDto);
		return "redirect:/";
	}
	@ModelAttribute("BOOK")
	public BookDto bookDto() {
//		return UserDto.builder().build();
		return new BookDto();
	}
}
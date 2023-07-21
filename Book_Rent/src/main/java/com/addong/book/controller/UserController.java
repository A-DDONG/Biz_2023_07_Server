package com.addong.book.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.addong.book.dao.UserDao;
import com.addong.book.models.UserDto;
import com.addong.book.service.UserService;

@SessionAttributes("USER")
@Controller
@RequestMapping(value = "/user")
public class UserController {
	
	protected final UserService userService;
	protected final UserDao userDao;


	public UserController(UserService userService, UserDao userDao) {
		this.userService = userService;
		this.userDao = userDao;
	}

	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String login(String error,Model model) {
		model.addAttribute("ERROR",error);
		model.addAttribute("BODY","LOGIN");
		return "home";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@ModelAttribute("USER") UserDto userDto, HttpSession httpSession, SessionStatus sessionStatus) {

		try {
			UserDto resultDto = userService.login(userDto);
			httpSession.setAttribute("LOGINUSER", resultDto);
		} catch (Exception e) {

			String message = e.getMessage();
			return "redirect:/user/login?ERROR=" + message;
		}
		sessionStatus.setComplete();

		return "redirect:/";
	}

	
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String join(@ModelAttribute UserDto userDto, Model model) {	
		model.addAttribute("BODY","JOIN");
		return "home";
	}
	
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String join(@ModelAttribute("USER") UserDto userDto, Model model, SessionStatus sessionStatus) {
		int result = userService.join(userDto);
		sessionStatus.setComplete();
		return "redirect:/user/login";
	}
	
	@RequestMapping(value="/logout", method = RequestMethod.GET)
	public String logout(HttpSession httpSession) {
		httpSession.removeAttribute("LOGINUSER");
		return "redirect:/";
	}
	@RequestMapping(value = "/member", method=RequestMethod.GET)
	public String member(@ModelAttribute("USER") UserDto userDto,Model model) {
		List<UserDto> userList = userService.selectAll();
		model.addAttribute("USERS", userList);
		return "user/member";
	}
    @RequestMapping(value = "/detail", method = RequestMethod.GET)
    public String userDetail(@RequestParam("u_id") String userId, Model model) {
        UserDto user = userDao.findById(userId);
        model.addAttribute("USER", user);
        return "user/detail";
    }
    
    @RequestMapping(value = "/edit", method = RequestMethod.GET)
    public String userEdit(@RequestParam("u_id") String userId, Model model) {
        UserDto user = userDao.findById(userId);
        model.addAttribute("USER", user);
        return "user/edit";
    }
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String userUpdate(@ModelAttribute("USER") UserDto userDto) {
        userDao.update(userDto); 
        return "redirect:/user/detail?u_id=" + userDto.getU_id();
    }
	
	@ModelAttribute("USER")
	public UserDto userDto() {
//		return UserDto.builder().build();
		return new UserDto();
	}

}


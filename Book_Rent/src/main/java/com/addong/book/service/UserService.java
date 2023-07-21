package com.addong.book.service;

import java.util.List;

import com.addong.book.models.UserDto;

public interface UserService {
	public List<UserDto> selectAll();
	public int join(UserDto userDto);
	public UserDto login(UserDto userDto) throws Exception;
	public int delete(String id);
}

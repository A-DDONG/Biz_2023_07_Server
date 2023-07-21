package com.addong.book.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.addong.book.dao.UserDao;
import com.addong.book.models.UserDto;
import com.addong.book.service.UserService;

@Service
public class UserServiceImplV1 implements UserService {

	private final UserDao userDao;

	public UserServiceImplV1(UserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	public List<UserDto> selectAll() {
		return userDao.selectAll();
	}

	@Override
	public int join(UserDto userDto) {

		return userDao.insert(userDto);
	}

	@Override
	public UserDto login(UserDto userDto) throws Exception {
		if(userDto.getU_id().isBlank()) {
			throw new Exception("USER_EMPTY");
		} else if(userDto.getPassword().isBlank()) {
			throw new Exception("PASSWORD_EMPTY");
		}
		UserDto resultDto = userDao.findById(userDto.getU_id());
		if(resultDto == null) {

			throw new Exception("U_ID");
		} else if(resultDto != null && !userDto.getPassword().equals(resultDto.getPassword()) ) {
			// username 은 있는데 비번이 다른 경우
			throw new Exception("PASSWORD");
		}
		
		return resultDto;
	}

	@Override
	public int delete(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

}

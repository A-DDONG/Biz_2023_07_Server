package com.addong.book.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.addong.book.models.UserDto;

public interface UserDao {

	@Select(" SELECT * FROM tbl_users ")
	public List<UserDto> selectAll();

	@Insert("INSERT INTO tbl_users(u_name, u_tel, u_addr, u_id, password) "
			+ "VALUES (#{u_name}, #{u_tel}, #{u_addr}, #{u_id}, #{password})")
	public int insert(UserDto userDto);
	
	@Select(" SELECT * FROM tbl_users WHERE u_id = #{u_id} ")
	public UserDto findById(String u_id);
	
	@Update("UPDATE tbl_users SET u_name = #{u_name}, u_tel = #{u_tel}, u_addr = #{u_addr} WHERE u_id = #{u_id}")
	public int update(UserDto userDto);
	
}

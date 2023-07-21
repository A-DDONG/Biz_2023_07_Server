package com.addong.book.models;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class UserDto {
	private long u_code;//	varchar(6)
	private String u_name;//	varchar(125)
	private String u_tel;//	varchar(125)
	private String u_addr;//	varchar(125)
	private String u_id;//	varchar(30)
	private String password;//	varchar(50)
	
}

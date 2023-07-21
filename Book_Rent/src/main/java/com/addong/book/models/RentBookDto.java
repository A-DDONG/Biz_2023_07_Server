package com.addong.book.models;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class RentBookDto {
	
	private long rent_seq;//	bigint 일련번호
	private String rent_date;//	varchar(30) 대출일
	private String rent_return_date;//	varchar(10) 반납예정일
	private String rent_bcode;//	varchar(6)
	private long rent_ucode;//	varchar(6)
	private String rent_return_yn;//	varchar(1) 반납여부
	private int rent_point;//	int
	

}


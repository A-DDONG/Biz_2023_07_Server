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
public class BookDto {
	private String b_code;//	varchar(6)		primary key,
	private String b_name;//	varchar(125)	not null,	
	private String b_author;//	varchar(125)	not null,	
	private String b_comp;//	varchar(125),		
	private String b_year;//	int	not null,	
	private String b_iprice;//	int,		
	private String b_rprice;//	INT	NOT NUL
}
	
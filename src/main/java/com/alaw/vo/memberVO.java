package com.alaw.vo;

import java.sql.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import lombok.RequiredArgsConstructor;

import lombok.NonNull;



@Data
@NoArgsConstructor
@AllArgsConstructor

public class memberVO {
	private String mb_id;
	private String mb_pwd;
	private String mb_phon;
	private String mb_email;
	private String mb_name;
	
	@DateTimeFormat(pattern = "yyyy-mm-dd")
	private Date mb_joindate;
	
	private String law_seq;
	private String law_test;
	private String test_round;
	private String test_year;
	private String law_office;
	private String law_number;
	
}
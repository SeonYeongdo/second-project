package com.alaw.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class caseVO {

	private String case_seq;
	private String mb_id;
	private String case_title;
	private String case_date;
	private String case_place;
	private String perpetrator;
	private String case_content;
}

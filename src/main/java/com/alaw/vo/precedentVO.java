package com.alaw.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@AllArgsConstructor
@NoArgsConstructor
public class precedentVO {

	
	private String prec_seq;
	private String prec_name;
	private String prec_court;
	private String prec_front;
	private String prec_result;
	private String prec_cause;
	private String case_name;
	private String prec_summary; 
	
	
	
	
	
}

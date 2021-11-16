package com.alaw.vo;

import java.sql.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class wishlistVO {
	
	private String prec_name;
	private String case_name;
	@DateTimeFormat(pattern = "yyyy-mm-dd")
	private Date reg_date;
	private String mb_id;

}

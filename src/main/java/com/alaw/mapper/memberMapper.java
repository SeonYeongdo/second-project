package com.alaw.mapper;

import java.sql.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.alaw.vo.caseVO;
import com.alaw.vo.memberVO;
import com.alaw.vo.precedentVO;
import com.alaw.vo.termsVO;
import com.alaw.vo.wishlistVO;

public interface memberMapper {

	   public memberVO LoginCheck(@Param("mb_id") String mb_id, @Param("mb_pwd") String mb_pwd);
	   
	   public memberVO Id_Check(@Param("id") String id);

	   public void joinInsert(@Param("mb_id") String mb_id, @Param("mb_pwd") String mb_pwd, @Param("mb_name") String mb_name,@Param("mb_phon") String mb_phon,@Param("mb_email") String mb_email,@Param("mb_joindate") String mb_joindate);

	   public void join_l(@Param("mb_id") String mb_id, @Param("mb_pwd") String mb_pwd, @Param("mb_name") String mb_name, @Param("mb_email") String mb_email,@Param("mb_joindate") String mb_joindate,@Param("law_test") String law_test, @Param("test_round") String law_round, @Param("test_year") String test_year, @Param("law_office") String law_office, @Param("law_number") String law_number);
	   
	   public termsVO searchKey(@Param("search") String search);

	   public List<precedentVO> search_pr(@Param("search_word")String search_word);
	   
	   public precedentVO docu_page (@Param("prec_seq") String prec_seq);
	   
	   public int wishlist (@Param("prec_name") String prec_name, @Param("case_name") String case_name, @Param("mb_id") String mb_id);
	   
	   public List<wishlistVO> wishlist_list(@Param("mb_id") String mb_id);

	   public int wish_del(@Param("prec_name")String prec_name, @Param("mb_id")String mb_id);
	   
	   public int insert_case(@Param("mb_id")String mb_id, @Param("case_title")String case_title, @Param("case_date")String case_date, @Param("case_place")String case_place, @Param("perpetrator")String perpetrator, @Param("case_content")String case_content);
	   
	   public List<caseVO> case_list(@Param("mb_id")String mb_id);

	   public int case_del(@Param("case_seq")String case_seq);
	   
	   public List<precedentVO> cosine_list(@Param("idx1")String idx1, @Param("idx2")String idx2, @Param("idx3")String idx3, @Param("idx4")String idx4, @Param("idx5")String idx5);
	   
	   public List<precedentVO> search_type(@Param("case_type")String case_type, @Param("search_word")String search_word);
}

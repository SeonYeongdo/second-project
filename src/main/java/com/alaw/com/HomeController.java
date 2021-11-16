package com.alaw.com;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.text.DateFormat;
import java.text.ParseException;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alaw.mapper.memberMapper;
import com.alaw.vo.caseVO;
import com.alaw.vo.memberVO;
import com.alaw.vo.precedentVO;
import com.alaw.vo.termsVO;
import com.alaw.vo.wishlistVO;

@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	private memberMapper bmapper;

	@RequestMapping("main")
	public String main() {

		return "01main";

	}

	@RequestMapping("login")
	public String login() {

		return "03login";

	}

	@RequestMapping("/login.do")
	public String logincheck(HttpServletRequest req) {

		String mb_id = req.getParameter("mb_id");
		String mb_pwd = req.getParameter("mb_pwd");

		HttpSession session = req.getSession();

		logger.info("유저DB에 접근합니다.");
		logger.info(mb_id);
		logger.info(mb_pwd);
		logger.info(bmapper.toString());

		memberVO vo = bmapper.LoginCheck(mb_id, mb_pwd);
		System.out.println(vo);

		if (vo == null) {
			return "03login";
		} else {
			session.setAttribute("mb", vo);
			return "01main";
		}
	}

	// 로그아웃
	@RequestMapping(value = "/logout.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String logout(HttpSession session) {

		session.removeAttribute("mb");
		return "01main";
	}

	@RequestMapping("join")
	public String join() {

		return "join1";

	}

	@RequestMapping("joinp")
	public String joinP() {

		return "join_p";

	}

	// 중복확인
	@ResponseBody
	@RequestMapping(value = "/Id_Check", produces = "text/plane", method = { RequestMethod.GET, RequestMethod.POST })
	public String Id_Check(@RequestBody String paramData) throws ParseException {
		String id = paramData.trim();
		System.out.println(id);

		memberVO vo = bmapper.Id_Check(id);

		if (vo != null) {// 결과 값이 있으면 아이디 존재
			return "-1";
		} else { // 없으면 아이디 존재 X
			System.out.println("null");
			return "0";
		}
	}

	// 용어검색
	@ResponseBody
	@RequestMapping(value = "/Search_key", produces = "text/plane;charset=utf8;", method = { RequestMethod.GET,
			RequestMethod.POST })
	public String Search_key(@RequestBody String paramData) throws ParseException {
		String search = paramData.trim();
		System.out.println(search);

		termsVO vo = bmapper.searchKey(search);

		logger.info("유저DB에 접근합니다.");
		logger.info(search);

		System.out.println(vo.getTerm_name());
		System.out.println(vo.getTerm_content());

		return vo.getTerm_name() + "/" + vo.getTerm_content();
	}

	// 타입 필터링
	   @RequestMapping(value = "/search_type", method = { RequestMethod.POST })
	   public ModelAndView search_type(HttpServletRequest req, Model model, @RequestParam String search_type, @RequestParam String search_wordd) throws UnsupportedEncodingException {
	      ModelAndView mv = new ModelAndView();
	      req.setCharacterEncoding("UTF-8");
	      String case_type = req.getParameter("search_type");
	      String search_word = req.getParameter("search_wordd");
	            if (case_type.equals("case_ms")) {
	         case_type = "%가단%";
	         
	      } else if (case_type.equals("case_hs")){
	         case_type = "%고단%";
	         
	      } else if (case_type.equals("case_gs")) {
	         case_type = "%드단%";
	         
	      } else {
	         case_type = "%법%";
	         
	      }
	      logger.info("조건부 검색 시작");
	      logger.info(case_type);
	      logger.info(search_word);

	      
	      List<precedentVO> type_list = bmapper.search_type(case_type, search_word);
	      model.addAttribute("type_list", type_list);
	      model.addAttribute("search_word", search_word);
	      System.out.println(type_list);
	      mv.setViewName("jsonView");
	      return mv;
	   }
	   // 메인검색  

	   @RequestMapping(value = "/search_result", method = { RequestMethod.GET, RequestMethod.POST })
	   public String search_result(HttpServletRequest req, Model model) throws UnsupportedEncodingException {
	      req.setCharacterEncoding("UTF-8");

	      String ww = req.getQueryString();
	      String ww2 = req.getParameter("case-type");
	      String search_word1 = req.getParameter("search_word");
	      String search_word = "%" + search_word1 + "%";

	      logger.info(ww);
	      logger.info(ww2);
	      logger.info(search_word);
	      logger.info(bmapper.toString());

	      List<precedentVO> list = bmapper.search_pr(search_word);
	      model.addAttribute("list", list);
	      model.addAttribute("search_word", search_word1);
	      System.out.println(list);

	      return "search_result";
	   }
	

	// 회원가입
	@RequestMapping("joinaa")
	public String joinInsert(HttpServletRequest req) throws UnsupportedEncodingException {
		logger.info("유저 데이터 DB 넣기");

		req.setCharacterEncoding("UTF-8");
		String mb_id = req.getParameter("mb_id");
		String mb_pwd = req.getParameter("mb_pwd");
		String mb_name = req.getParameter("mb_name");
		String mb_email = req.getParameter("mb_email");
		String mb_phon = req.getParameter("mb_phon");
		String mb_joindate = req.getParameter("mb_joindate");

		bmapper.joinInsert(mb_id, mb_pwd, mb_name, mb_email, mb_phon, mb_joindate);
		logger.info(mb_id);
		logger.info(mb_pwd);
		logger.info(mb_name);
		logger.info(mb_email);
		logger.info(mb_phon);
		logger.info(mb_joindate);

		return "redirect:/login";

	}

	// 변호사 회원가입
	@RequestMapping("joinlaw")
	public String joinLaw() {

		return "join_law";

	}

	// 변호사 회원가입
	@RequestMapping("join_l.do")
	public String join_l(HttpServletRequest req) throws UnsupportedEncodingException {
		logger.info("유저 데이터 DB 넣기");

		req.setCharacterEncoding("UTF-8");
		String mb_id = req.getParameter("mb_id");
		String mb_pwd = req.getParameter("mb_pwd");
		String mb_name = req.getParameter("mb_name");
		String mb_email = req.getParameter("mb_email");
		// String mb_phon = req.getParameter("mb_phon");
		String mb_joindate = req.getParameter("mb_joindate");
		String law_test = req.getParameter("law_test");
		String test_round = req.getParameter("test_round");
		String test_year = req.getParameter("test_year");
		String law_office = req.getParameter("law_office");
		String law_number = req.getParameter("law_number");

		logger.info(mb_id);
		logger.info(mb_pwd);
		logger.info(mb_name);
		logger.info(mb_email);
		// logger.info(mb_phon);
		logger.info(law_test);
		logger.info(test_round);
		logger.info(test_year);
		logger.info(law_number);
		logger.info(law_office);

		bmapper.join_l(mb_id, mb_pwd, mb_name, mb_email, mb_joindate, law_test, test_round, test_year, law_office,
				law_number);

		return "redirect:/login";

	}

	// 판례 뷰 페이지 이동
	@RequestMapping(value = "/docu_page", method = { RequestMethod.GET, RequestMethod.POST })
	public String docu_page(HttpServletRequest req, Model model) throws UnsupportedEncodingException {

		req.setCharacterEncoding("UTF-8");
		String param = req.getQueryString();
		String[] param_l = param.split("=");
		String prec_seq = param_l[1];

		logger.info("판례DB에 접근합니다.");
		logger.info(prec_seq);

		precedentVO precVO = bmapper.docu_page(prec_seq);
		model.addAttribute("precVO", precVO);
		System.out.println(precVO);
		return "docu_page";

	}

	@RequestMapping("law_page2")
	public String law_page2() {

		return "law_page2";

	}

	@RequestMapping("my_case")
	public String my_case() {

		return "my_case";

	}

	@RequestMapping("law_page")

	public String law_page() {

		return "law_page";

	}

	// 즐겨찾기
	@ResponseBody
	@RequestMapping(value = "/wishlist.do", method = { RequestMethod.GET, RequestMethod.POST })
	public int wishlist(HttpServletRequest req, Model model) throws UnsupportedEncodingException {

		req.setCharacterEncoding("UTF-8");
		String prec_name = req.getParameter("prec_name");
		String case_name = req.getParameter("case_name");
		String mb_id = req.getParameter("mb_id");
		logger.info("판례DB에 접근합니다.");
		logger.info(prec_name);
		logger.info(case_name);
		logger.info(mb_id);
		int result;
		result = bmapper.wishlist(prec_name, case_name, mb_id);
		System.out.println(result);
		// String rst = String.valueOf(result);
		// model.addAttribute("rst", rst);

		return result;

	}

//마이페이지 위시리스트

	@RequestMapping(value = "/my_info", method = { RequestMethod.GET, RequestMethod.POST })
	public String my_info(HttpServletRequest req, Model model) throws UnsupportedEncodingException {
		req.setCharacterEncoding("UTF-8");

		String mb_id_a = req.getQueryString();
		String[] mb_id_arr = mb_id_a.split("=");
		String mb_id = mb_id_arr[1];
		logger.info("마이페이지 실행");
		logger.info(mb_id);

		logger.info(bmapper.toString());

		List<caseVO> clist = bmapper.case_list(mb_id);
		model.addAttribute("clist", clist);
		System.out.println(clist);
		System.out.println("사건 1리스트 불러오기 끝! 위시 리스트 불러오기 시작");

		List<wishlistVO> wlist = bmapper.wishlist_list(mb_id);
		model.addAttribute("wlist", wlist);
		System.out.println(wlist);

		return "my_info";

	}

	// 즐겨찾기 삭제
	@ResponseBody
	@RequestMapping(value = "/wish_del.do", method = { RequestMethod.GET, RequestMethod.POST })
	public int wish_del(HttpServletRequest req, Model model) throws UnsupportedEncodingException {

		req.setCharacterEncoding("UTF-8");
		String prec_name = req.getParameter("prec_name");
		String mb_id = req.getParameter("mb_id");
		logger.info("위시DB에 접근합니다.");
		logger.info(prec_name);
		logger.info(mb_id);

		int result;
		result = bmapper.wish_del(prec_name, mb_id);
		System.out.println(result);
		return result;

	}

	@ResponseBody
	@RequestMapping(value = "/insert_case.do", method = { RequestMethod.GET, RequestMethod.POST })
	public int insert_case(HttpServletRequest req, Model model) throws UnsupportedEncodingException {

		req.setCharacterEncoding("UTF-8");
		String case_title = req.getParameter("case_title");
		String case_date = req.getParameter("case_date");
		String mb_id = req.getParameter("mb_id");
		String case_place = req.getParameter("case_place");
		String perpetrator = req.getParameter("perpetrator");
		String case_content = req.getParameter("case_content");
		logger.info("나의 사례 DB에 접근합니다.");
		logger.info(case_title);
		logger.info(case_date);
		logger.info(mb_id);
		logger.info(case_place);
		logger.info(perpetrator);
		logger.info(case_content);

		int result;
		result = bmapper.insert_case(mb_id, case_title, case_date, case_place, perpetrator, case_content);
		System.out.println(result);

		return result;

	}

	@RequestMapping("solo")

	public String solo() {

		return "solo";

	}

	// 사례 삭제
	@ResponseBody
	@RequestMapping(value = "/case_del.do", method = { RequestMethod.GET, RequestMethod.POST })
	public int case_del(HttpServletRequest req, Model model) throws UnsupportedEncodingException {

		req.setCharacterEncoding("UTF-8");
		String case_seq = req.getParameter("case_seq");

		logger.info("케이스DB에 접근합니다.");
		logger.info(case_seq);

		int result;
		result = bmapper.case_del(case_seq);
		System.out.println(result);
		return result;

	}

	@RequestMapping(value = "/result.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String result(HttpServletRequest req, Model model) throws UnsupportedEncodingException {
		String idx = req.getParameter("idx");
		logger.info(idx);

		String[] idx_l = idx.split(" ");
		String idx1 = idx_l[0];
		String idx2 = idx_l[1];
		String idx3 = idx_l[2];
		String idx4 = idx_l[3];
		String idx5 = idx_l[4];
		logger.info(idx1);
		System.out.println(idx2);
		System.out.println(idx3);
		System.out.println(idx4);
		System.out.println(idx5);

		List<precedentVO> cos_list = bmapper.cosine_list(idx1, idx2, idx3, idx4, idx5);
		model.addAttribute("cos_list", cos_list);
		System.out.println(cos_list);
		return "result";

	}

}

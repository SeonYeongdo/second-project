<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page session="true" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<%@page import="com.alaw.vo.memberVO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta content="Store - Webflow HTML website template" property="og:title">
  <meta content="https://uploads-ssl.webflow.com/5c6eefaaeddf9248ac13bc72/5cdc90c195678d12d5f23f33_Store%20SEO.jpg" property="og:image">
  <meta content="Store - Webflow HTML website template" property="twitter:title">
  <meta content="https://uploads-ssl.webflow.com/5c6eefaaeddf9248ac13bc72/5cdc90c195678d12d5f23f33_Store%20SEO.jpg" property="twitter:image">
  <meta content="width=device-width, initial-scale=1" name="viewport">
  <meta content="Webflow" name="generator">
  <link href="resources/css/normalize.css" rel="stylesheet" type="text/css">
  <link href="resources/css/webflow.css" rel="stylesheet" type="text/css">
  <link href="resources/css/seungyus-trendy-project.webflow.css" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.26/webfont.js" type="text/javascript"></script>
  <script type="text/javascript">WebFont.load({  google: {    families: ["Montserrat:100,100italic,200,200italic,300,300italic,400,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic","Vollkorn:400,400italic,700,700italic","Exo:100,100italic,200,200italic,300,300italic,400,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic","Oswald:200,300,400,500,600,700","Changa One:400,400italic"]  }});</script>
  <!-- [if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js" type="text/javascript"></script><![endif] -->
  <script type="text/javascript">!function(o,c){var n=c.documentElement,t=" w-mod-";n.className+=t+"js",("ontouchstart"in o||o.DocumentTouch&&c instanceof DocumentTouch)&&(n.className+=t+"touch")}(window,document);</script>
  <link href="images/favicon.ico" rel="shortcut icon" type="image/x-icon">
  <link href="images/webclip.png" rel="apple-touch-icon">
  <script type="text/javascript">
  function joinC(){
	  alert("가입을 축하 드립니다.")
  }
  
  
  function check(){
		id = $("#mb_id").val();
		
		$.ajax({
		    url: 'Id_Check',
		    type: 'POST',
		    dataType: 'text', //서버로부터 내가 받는 데이터의 타입
		    contentType : 'text/plain; charset=utf-8;',//내가 서버로 보내는 데이터의 타입
		    data: id,

		    success: function(data){
		         if(data == 0){
		         console.log("아이디 없음");
		         alert("사용하실 수 있는 아이디입니다.");
		         }else{
		         	console.log("아이디 있음");
		         	alert("중복된 아이디가 존재합니다.");
		         }
		    },
		    error: function (){        
		                      
		    }
		  });


	}
  
  </script>
</head>
<body>
<div class="top-nav">
    <a href="main" class="link-block-6 w-inline-block">
      <div class="logo-area"><img src="resources/img/61686847a00c2e031ce676e6_noun_Law_3469087.png" loading="lazy" width="53" sizes="53px" srcset="resources/img/61686847a00c2e031ce676e6_noun_Law_3469087-p-500.png 500w, resources/img/61686847a00c2e031ce676e6_noun_Law_3469087.png 700w" alt="" class="image">
        <div class="logo-text"><span class="text-span">A</span>LAW</div>
      </div>
    </a>
  </div>
  <div class="w-form">
    <form action = "${path}/join_l.do" method="post" class="form-5 join-law-form">
      <div class="div-block-34">
        <div class="div-block-56">
          <div class="text-block-9"><span class="text-span-2">회원정보입력</span></div>
          <div class="div-block-35">
            <div class="text-block-15">아이디</div>
            <input type="text" class="text-field-11 w-input" maxlength="256" name="mb_id" placeholder=" 5자 이상 영문, 숫자" id="mb_id">
            <a href="#" class="button-8 w-button" onclick = "check()">중복확인</a>
          </div>
          <div class="div-block-35">
            <div class="text-block-16">비밀번호</div>
            <input type="password" class="text-field-12 w-input" maxlength="256" name="mb_pwd" placeholder="8자리 이상 영문, 숫자, 특수기호 포함" id="mb_pwd">
          </div>
          <div class="div-block-35">
            <div class="text-block-17">비밀번호 확인</div>
            <input type="password" class="text-field-13 w-input" maxlength="256" name="mb_pwd2" placeholder="비밀번호 재입력" id="mb_pwd2">
          </div>
          <div class="div-block-35">
            <div class="text-block-18">이메일</div>
            <input type="email" class="text-field-14 w-input" maxlength="256" name="mb_email" placeholder="이메일" id="mb_email">
          </div>
          <div class="div-block-35">
            <div class="text-block-19">소속 사무실명</div>
            <input type="text" class="text-field-15 w-input" maxlength="256" name="law_office" placeholder="법인명 또는 사무실명" id="law_office">
          </div>
          <div class="div-block-35">
            <div class="text-block-20">소속 전화번호</div>
            <input type="text" class="text-field-16 w-input" maxlength="256" name="law_number" placeholder="&#x27; - &#x27; 제외 입력 " id="law_number">
          </div>
          <div class="div-block-35">
            <div class="text-block-21">이름</div>
            <input type="text" class="text-field-17 w-input" maxlength="256" name="mb_name" id="mb_name">
          </div>
          <div class="div-block-35">
            <div class="text-block-31">출신시험</div>
            <select id="law_test" name="law_test" class="select-field-2 w-select">
              <option value="사법시험">사법시험</option>
              <option value="변호사">변호사 시험</option>
              <option value="군법무관 임용시험">군법무관 임용시험</option>
              <option value="고등고시">고등고시</option>
            </select>
          </div>
          <div class="div-block-35">
            <div class="text-block-32">시험회차</div>
            <input type="text" class="text-field-19 w-input" maxlength="256" name="test_round" placeholder="ex) 10회" id="test_round">
          </div>
          <div class="div-block-35">
            <div class="text-block-33">변호사 자격취득년도</div>
            <input type="text" class="text-field-20 w-input" maxlength="256" name="test_year" placeholder="ex) 2021" id="test_year">
          </div>
        </div>
      </div>
      <div class="div-block-33">
     <button data-wait="Please wait..." class="submit-button-4 w-button" type="submit" onclick="joinC()">회원가입</button>
     </div>
    </form>
    <div style= 'height: 100px;'></div>
    <div class="w-form-done">
      <div>Thank you! Your submission has been received!</div>
    </div>
    <div class="w-form-fail">
      <div>Oops! Something went wrong while submitting the form.</div>
    </div>
  </div>
  <script src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=615d36d209b8655960069172" type="text/javascript" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
  <script src="js/webflow.js" type="text/javascript"></script>
</body>
</html>
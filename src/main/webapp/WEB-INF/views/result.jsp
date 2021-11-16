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
<meta charset="utf-8">
  <title>Untitled</title>
  <meta content="Untitled" property="og:title">
  <meta content="Untitled" property="twitter:title">
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
  <style>
  	/* 말풍선 적절한 top 과 margin-left 로 위치조정 */
	.arrow_box {
	  display: none;
	  position: absolute;
	  width: 800px;
	  padding: 30px;
	  left: 0;
	  -webkit-border-radius: 8px;
	  -moz-border-radius: 8px;
	  border-radius: 8px;
	  background: #333;
	  color: #fff;
	  font-size: 14px;
	  margin-left : 700px
	}
	
	.arrow_box:after {
	  position: absolute;
	  bottom: 100%;
	  left: 50%;
	  width: 0;
	  height: 0;
	  margin-left: -10px;
	  border: solid transparent;
	  border-color: rgba(51, 51, 51, 0);
	  border-bottom-color: #333;
	  border-width: 10px;
	  pointer-events: none;
	  content: ' ';
	  margin-left : 360px
	}
	
	span:hover + p.arrow_box {
	  display: block;
	}
  </style>
</head>
<body>
	<div class="search-box">
    <div class="search-input1">
      <form action="${path}/search_result" class="search-2 w-form">
	      <input type="search" class="search-input-2 w-input" maxlength="256" name="search_word" placeholder="검색어를 입력하세요." id="search_word">
	      <input type="submit" value="Go" class="search-button-2 w-button">
	  </form>
    </div>
    <div class="top-nav">
      <div class="logo-area">
        <a href="main" class="link-block w-inline-block"><img src="resources/images/61686847a00c2e031ce676e6_noun_Law_3469087.png" loading="lazy" width="53" sizes="52.986114501953125px" srcset="resources/images/61686847a00c2e031ce676e6_noun_Law_3469087-p-500.png 500w, resources/images/61686847a00c2e031ce676e6_noun_Law_3469087.png 700w" alt="" class="image">
          <div class="logo-text"><span class="text-span">A</span>LAW</div>
        </a>
      </div>
      <div class="top-menu-list">
        <ul role="list" class="top-menu-list w-list-unstyled">
          <li class="list-item-4" style="width: 100px;">
            <a href="my_case" class="top-menu-link" style="width: 70px;">내 사례<br>‍</a>
          </li>
          <li class="list-item-4" style="width: 100px;">
            <a href="law_page" class="top-menu-link" style="width: 70px;">변호사</a>
          </li>
          <li class="list-item-4" style="width: 100px;" style="width: 100px;">
            <a href="solo" class="top-menu-link" style="width: 100px;">나홀로소송<br>‍</a>
          </li>
        </ul>
      </div>
       <c:choose> 
        <c:when test="${mb == null}">
        <div class="div-block-8">  
          <div class="logjoin-box">
          <a href="login" class="button-5 w-button">로그인</a>
          </div>
          <div class="logjoin-box">
          <a href="join" class="button-6 w-button">회원가입</a>
        </div>
        </div>
        </c:when>
        
        <c:when test="${mb != null}">
        <div class="div-block-8" style="margin-left: 160px;">
          <span style="color: blue; width: 65px;">${mb.mb_name}</span>
          <span>님</span>
          <a href="my_info?mb_id=${mb.mb_id}" class="button-6 w-button" style="margin-left: 30px; padding-left: 25px;">My</a>
          <a href="logout.do" class="button-6 w-button" style="margin-left: 10px;">로그아웃</a>
          </div>      
        </c:when>
        </c:choose>
    </div>
  </div>
  <div class="div-block-43">
    <div class="form-block-3 w-form" style="height: 482.5px;">
      <form id="email-form" name="email-form" data-name="Email Form" class="form-10">
        <div class="div-block-46">
          <div class="div-block-48"><img src="resources/images/icons8-답변-정렬-24.png" loading="lazy" alt="" class="image-3">
            <div class="text-block-25">사건 종류</div>
          </div>
         <form action='search_result?search_word='>
          <div class="div-block-49"> 
          	<label class="radio-button-field w-radio">
          		<input checked = "checked" type="radio" id="case-type" name="case-type" value="전체" class="w-form-formradioinput radio-button w-radio-input">
          			<span for="all_-3" class="radio-button-label w-form-label">전체</span>
          	</label>
          	<label class="radio-button-field w-radio">
          		<input type="radio" id="case-type" name="case-type" value="민사" class="w-form-formradioinput radio-button w-radio-input">
          			<span for="all_-4" class="radio-button-label w-form-label">민사</span>
          	</label>
          	<label class="radio-button-field w-radio">
          		<input type="radio" id="case-type" name="case-type" value="형사" class="w-form-formradioinput radio-button w-radio-input">
          			<span for="all_-4" class="radio-button-label w-form-label">형사</span>
          	</label>
          	<label class="radio-button-field w-radio">
          		<input type="radio" id="case-type" name="case-type" value="행정" class="w-form-formradioinput radio-button w-radio-input">
          			<span for="all_-4" class="radio-button-label w-form-label">행정</span>
          	</label>
          	<label class="radio-button-field w-radio">
          		<input type="radio" id="case-type" name="case-type" value="가사" class="w-form-formradioinput radio-button w-radio-input">
          			<span for="all_-4" class="radio-button-label w-form-label">가사</span>
          	</label>
          	<label class="radio-button-field w-radio">
          		<input type="radio" id="case-type" name="case-type" value="특허" class="w-form-formradioinput radio-button w-radio-input">
          			<span for="all_-5" class="radio-button-label w-form-label">특허</span>
          	</label>
          	<label class="radio-button-field w-radio">
          		<input type="radio" id="case-type" name="case-type" value="기타" class="w-form-formradioinput radio-button w-radio-input">
          			<span for="all_-5" class="radio-button-label w-form-label">기타</span>
          	</label>
          </div>
          </form>
        </div>
        
       
        
       
      </form>
    
     
    </div>
    <div class="div-block-45">
      <div>
        <div class="text-block-28"><span class="text-span-5">${mb.mb_name}</span>님의 AI사례 검색 결과입니다.</div>
      </div>

	<c:forEach var = "cosvo" items = "${cos_list}">
      <div class="content-box w-clearfix">
        <div>
          <a href="${path}/docu_page?prec_seq=${cosvo.prec_seq}" class="link-6">
	          <span>${cosvo.prec_name}</span>
	          <span>${cosvo.case_name}</span>
          </a>
        </div>
        <div class="div-block-51 w-clearfix">
          <div class="text-block-26"style="height: 80px;">
          	<span>${cosvo.prec_cause}</span>
          </div>
        </div>
        <div data-w-id="aca52253-c51d-adcd-1223-7b6f285bd710" class="div-block-50">
          <div data-w-id="43b155ee-5423-d62e-b27d-1a6c0c6ad8fd" class="text-block-27"><span>주문</span><p class="arrow_box">${cosvo.prec_result}</p></div>
          <div class="container-2 w-container">
            <div class="text-block-125">${cosvo.prec_result}</div>
          </div>
        </div>
        <div class="div-block-52"></div>
      </div>
    </c:forEach>
  
     
    </div>
  </div>
  <div class="div-block-54"></div>
  <script src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=615d36d209b8655960069172" type="text/javascript" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
  <script src="js/webflow.js" type="text/javascript"></script>
</body>
</html>
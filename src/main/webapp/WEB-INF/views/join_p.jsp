<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page session="true" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta content="About" property="twitter:title">
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
  
</head>
<body>
<div class="top-nav">
    <a href="main" class="link-block-7 w-inline-block">
      <div class="logo-area"><img src="resources/img/61686847a00c2e031ce676e6_noun_Law_3469087.png" loading="lazy" width="53" sizes="53px" srcset="resources/img/61686847a00c2e031ce676e6_noun_Law_3469087-p-500.png 500w, resources/img/61686847a00c2e031ce676e6_noun_Law_3469087.png 700w" alt="" class="image">
        <div class="logo-text"><span class="text-span">A</span>LAW</div>
      </div>
    </a>
  </div>
  <div class="w-form">
    <form action="${path}/joinaa.do" method="post" class="form-5">
      <div class="div-block-27">
        <div class="text-block-9"><span class="text-span-2">회원정보입력</span></div>
        <div class="div-block-57">
          <div class="text-block-34" >이름</div><input required type="text" class="text-field-21 w-input" maxlength="256" name="mb_name" id="mb_name">
        </div>
        <div class="join-id">
          <div class="text-block-10"><span class="text-span-3">아이디  </span></div><input type="text" class="text-field-5 w-input" maxlength="256" name="mb_id" id='mb_id' placeholder="5자 이상 영문, 숫자" style="padding-left: 12px;">
          <button class="button-7 w-button" type="button" onclick="check();"style="padding-left: 3px;">중복확인</button>
        </div>
        <div class="pwd-box">
          <div class="text-block-11">비밀번호</div><input required type="password" class="text-field-6 w-input" maxlength="256" name="mb_pwd" placeholder="8자리 이상 영문, 숫자, 특수기호 포함" id="mb_pwd">
        </div>
        <div class="div-block-30">
          <div class="text-block-12">비밀번호 확인</div><input required type="password" class="text-field-9 w-input" maxlength="256" name="memberPass2" placeholder="비밀번호 재입력" id="field-2">
        </div>
        <div class="div-block-29">
          <div class="text-block-13">이메일주소 </div><input required type="email" class="text-field-8 w-input" maxlength="256" name="mb_email" placeholder="이메일" id="mb_email" >
        </div>
        <div class="div-block-31">
          <div class="text-block-14">전화번호</div><input required type="text" class="text-field-10 w-input" maxlength="256" name="mb_phon" placeholder="&#x27; - &#x27; 제외 입력 " id="mb_phon">
        </div>
      </div>
      <div class="div-block-33">
      <button data-wait="Please wait..." class="submit-button-4 w-button" type="submit" onclick="joinC()">회원가입</button>
      </div>
    </form>
    
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
  
</html>
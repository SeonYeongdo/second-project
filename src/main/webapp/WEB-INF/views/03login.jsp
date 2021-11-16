<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page session="true" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang = "ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta content="About" property="og:title">
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
<div class="div-block-17">
    <div class="div-block-18">
      <div class="div-block-19">
        <a href="main" class="link-block-2 w-inline-block">
          <div class="login-logo"><img src="resources/images/61686847a00c2e031ce676e6_noun_Law_3469087.png" loading="lazy" sizes="90px" srcset="resources/images/61686847a00c2e031ce676e6_noun_Law_3469087-p-500.png 500w, resources/images/61686847a00c2e031ce676e6_noun_Law_3469087.png 700w" alt="" class="image-2"></div>
          <div class="login-alaw">
            <div class="text-block-5"><strong class="bold-text">A</strong>LAW</div>
          </div>
        </a>
      </div>
      <section>
      <div>
        <div class="w-form">
        
          <form action="${path}/login.do" method='post' class="login-form">
          	<input required type = "text" class="text-field-4 w-input" maxlength="256" name="mb_id"  placeholder="아이디 or 이메일" id="mb_id">
          	<input required type = "password" class="text-field-4 w-input" maxlength="256" name="mb_pwd" placeholder="비밀번호" id="mb_pwd">
            <div><input type="submit" value="로그인" class="submit-button-2 w-button"></div>
          </form>
          
          <div class="w-form-done">
            <div>Thank you! Your submission has been received!</div>
          </div>
          <div class="w-form-fail">
            <div>Oops! Something went wrong while submitting the form.</div>
          </div>
        </div>
        
      </div>
      <div class="div-block-21">
        <div class="text-block-6"> 회원이 아니신가요?</div>
        <a href="join.html" class="link-3">회원가입</a>
      </div>
      </section>
      <div class="div-block-21">
        <div class="text-block-6"> 아이디를 잃어버리셨나요?</div>
        <a href="#" class="link-3">아이디 찾기</a>
      </div>
      <div class="div-block-21">
        <div class="text-block-6"> 비밀번호를 잃어버리셨나요?</div>
        <a href="#" class="link-3">비밀번호 찾기</a>
      </div>
    </div>
    <div class="div-block-20"></div>
  </div>
  <script src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=615d36d209b8655960069172" type="text/javascript" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
  <script src="js/webflow.js" type="text/javascript"></script>
</body>
</html>
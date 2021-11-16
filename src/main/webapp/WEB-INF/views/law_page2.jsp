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
<title>ALAW</title>
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
  <script type="text/javascript">WebFont.load({  google: {    families: ["Montserrat:100,100italic,200,200italic,300,300italic,400,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic","Vollkorn:400,400italic,700,700italic","Exo:100,100italic,200,200italic,300,300italic,400,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic","Oswald:200,300,400,500,600,700","Changa One:400,400italic","Exo 2:regular"]  }});</script>
  <!-- [if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js" type="text/javascript"></script><![endif] -->
  <script type="text/javascript">!function(o,c){var n=c.documentElement,t=" w-mod-";n.className+=t+"js",("ontouchstart"in o||o.DocumentTouch&&c instanceof DocumentTouch)&&(n.className+=t+"touch")}(window,document);</script>
  <link href="images/favicon.ico" rel="shortcut icon" type="image/x-icon">
  <link href="images/webclip.png" rel="apple-touch-icon">
</head>
<body>
<div class="div-block-89">
    <div class="div-block-81">
      <div class="text-block-71">모욕, 명예훼손 전문</div>
      <div class="text-block-72">변호사 박재한</div>
      <div class="text-block-73">상품 이용에 관한 중요한 안내</div>
      <div class="text-block-74">· 실제 상담 시작은 상호 협의하에 진행됩니다.</div>
    </div>
    <div class="div-block-82">
      <div class="text-block-75">상세 설명</div>
      <div class="text-block-76">변호사가 직접 보이스피싱에 연루된 피의자, 피고인과 관련된 전문적 상담을 진행합니다.​수사기관 초동대처, 범죄사실에 대한 인부절차, 피해금원회복을 위한 방향제시, 공범과의 관계 등​보이스피싱과 관련된 수사상 절차상의 궁금증 등 의뢰인이 필요한 케이스를 판단하여 질의한 내용에 대한 답변을​드리겠습니다.​</div>
      <div class="text-block-77"><span>#명예훼손</span> <span class="text-span-26">#모욕</span> <span class="text-span-27">#상담</span></div>
    </div>
    <div class="div-block-85">
      <div class="text-block-78">판매자 정보</div>
      <div class="div-block-84"></div>
    </div>
    <div class="div-block-83">
      <div id="w-node-ba20516c-2825-ee50-ddd6-7c0a5930c8a4-20c9e865" class="law-info">대표자</div>
      <div class="text-block-84">박재한</div>
      <div class="text-block-80">상호명</div>
      <div class="text-block-85">법률사무소</div>
      <div class="text-block-81">사업자등록번호</div>
      <div class="text-block-86">500-01-05134</div>
      <div class="text-block-82">메일</div>
      <div class="text-block-87">jeaha@naver.com</div>
      <div class="text-block-83">사업장 주소</div>
      <div class="text-block-88">광주광역시 서구 송암로22(송암동), cgi 2층</div>
    </div>
    <div class="top-nav">
      <div class="logo-area">
        <a href="main" class="link-block w-inline-block"><img src="resources/images/61686847a00c2e031ce676e6_noun_Law_3469087.png" loading="lazy" width="53" sizes="53px" srcset="resources/images/61686847a00c2e031ce676e6_noun_Law_3469087-p-500.png 500w, resources/images/61686847a00c2e031ce676e6_noun_Law_3469087.png 700w" alt="" class="image">
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
  <div class="div-block-88">
    <div class="div-block-93">
      <div class="text-block-89">20,000원</div>
    </div>
    <div class="text-block-90">기본 정보</div>
    <div>
      <div class="div-block-90"><img src="resources/images/icons8-wall-clock-50.png" loading="lazy" alt="" class="image-16">
        <div class="text-block-91">1:1 상담 30분</div>
      </div>
      <div class="div-block-94 w-clearfix">
        <div class="div-block-91"><img src="resources/images/icons8-이야기-50.png" loading="lazy" alt="" class="image-17"></div>
        <div class="div-block-92">
          <div class="text-block-92">대화 방법</div>
          <div class="text-block-93">1:1 채팅, 음성 통화 가능</div>
        </div>
      </div>
      <div class="div-block-95 w-clearfix">
        <div class="div-block-91"><img src="resources/images/icons8-레이블-50.png" loading="lazy" alt="" class="image-17"></div>
        <div class="div-block-92">
          <div class="text-block-94">수정 제공</div>
          <div class="text-block-95">30분 후 추가비용 발생</div>
        </div>
      </div>
    </div>
    <div class="div-block-96">
      <a href="#" class="button-9 w-button">구매하기</a>
    </div>
    <div class="div-block-97">
      <div class="text-block-96">변호사 박재환</div>
      <div class="text-block-97">신뢰와 믿음을 바탕으로 서비하는 변호사<br>박재한 입니다.</div>
    </div>
    <div>
      <div class="text-block-98"><span class="text-span-28">참다운법률사무소<br></span>대표변호사</div>
      <div class="div-block-98">
        <div><span>·</span> <span class="text-span-29">대한변호사협회 대의원</span></div>
        <div><span>·</span> <span class="text-span-30">광주지방법원 국선변호인</span></div>
        <div><span>·</span> <span class="text-span-31">광주지방법원 논스톱 국선변호인</span></div>
      </div>
    </div>
  </div>
  <div class="div-block-86"></div>
  <script src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=615d36d209b8655960069172" type="text/javascript" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
  <script src="js/webflow.js" type="text/javascript"></script>
</body>
</html>
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
  <title>my info</title>
  <meta content="my info" property="og:title">
  <meta content="my info" property="twitter:title">
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
   <script type="text/javascript">
     function wishDel(){
         
         $.ajax({
            url: "${path}/wish_del.do",
            type: "get",
            data: {
               mb_id : $("#mb_id").val(),
               prec_name : $("#prec_name").val()
            },
            dataType: "json",
            success: function(data) {
               alert("삭제 되었습니다.");
               location.reload();
            },
            error: function() {
               alert("에러");
            }
         });
   
   }
     function caseDel(){
         
         $.ajax({
            url: "${path}/case_del.do",
            type: "get",
            data: {
               case_seq : $("#case_seq").val()
            },
            dataType: "json",
            success: function(data) {
               alert("삭제 되었습니다.");
               location.reload();
            },
            error: function() {
               alert("에러");
            }
         });
   
   }
  </script>
</head>
<body>
   <div class="top-nav">
      <div class="logo-area">
        <a href="main" aria-current="page" class="link-block w-inline-block w--current"><img src="resources/images/61686847a00c2e031ce676e6_noun_Law_3469087.png" loading="lazy" width="53" sizes="53px" srcset="resources/images/61686847a00c2e031ce676e6_noun_Law_3469087-p-500.png 500w, resources/images/61686847a00c2e031ce676e6_noun_Law_3469087.png 700w" alt="" class="image">
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
           <input type = "hidden" id="mb_id" value="${mb.mb_id}">
          <a href="my_info?mb_id=${mb.mb_id}" class="button-6 w-button" style="margin-left: 30px; padding-left: 25px;">My</a>
          <a href="logout.do" class="button-6 w-button" style="margin-left: 10px;">로그아웃</a>
          </div>      
        </c:when>
        </c:choose>
    </div>
  <div>
    <div class="text-block-111">마이페이지</div>
  </div>
  <div class="div-block-106">
    <div class="div-block-107">
      <div class="div-block-108"><img src="resources/images/icons8-pencil-case-100.png" loading="lazy" alt="" class="image-18">
        <div class="text-block-117">사례/판례보관함 </div>
      </div>
      <div class="div-block-110"><img src="resources/images/icons8-정보-100.png" loading="lazy" alt="" class="image-20">
        <div class="text-block-118">내 정보 변경</div>
      </div>
    </div>
    <div class="div-block-111">
      <div>
        <div class="text-block-119">사례 보관함</div>
        <div>
          <div class="text-block-112"><span class="text-span-36">번호</span><span class="text-span-34">제목</span><span class="text-span-35">내용  </span><span class="text-span-39">작성일</span></div>
        </div>
      <c:forEach var = "clistvo" items = "${clist}">
      <input type="hidden" id="case_seq" value="${clistvo.case_seq}">
        <div class="div-block-113">
          <div class="text-block-122">
             <span class="text-span-40">${clistvo.case_seq}</span>
             <span class="text-span-41">${clistvo.case_title}</span>
             <span class="text-span-42"style="height: 30px;">${clistvo.case_content}</span>
             <span class="text-span-43">${clistvo.case_date} <button onclick='caseDel()' class="button-10 w-button">삭제</button></span>
            
             </div>
        </div>
      </c:forEach>
      </div>
      <div class="div-block-115"></div>
      <div class="div-block-114">
        <div class="text-block-120">판례 보관함</div>
        
      <c:forEach var = "wlistvo" items = "${wlist}">
        <div class="div-block-116">
          <div class="text-block-121">${wlistvo.prec_name} | ${wlistvo.case_name}</div>
          <input type="hidden" id="prec_name" value="${wlistvo.prec_name}">
          <div class="div-block-117">
            <div class="text-block-116">
               <span class="text-span-38">${wlistvo.reg_date} 저장됨</span>
            </div>
            <button onclick='wishDel()' class="button-10 w-button">삭제</button>
          </div>
        </div>      
      </c:forEach>
          
      </div>
    </div>
  </div>
  <div class="div-block-118"></div>
  <script src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=615d36d209b8655960069172" type="text/javascript" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
  <script src="js/webflow.js" type="text/javascript"></script>
</body>
</html>
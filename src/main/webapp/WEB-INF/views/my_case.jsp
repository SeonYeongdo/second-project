<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page session="true" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<%@page import="com.alaw.vo.memberVO" %>
<%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <title>Insert title here</title>
   <meta charset="utf-8">
  <title>Styleguide</title>
  <meta content="Styleguide" property="og:title">
  <meta content="Styleguide" property="twitter:title">
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
   <script src="https://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
<div class="top-nav">
    <div class="logo-area">
      <a href="main" class="link-block w-inline-block"><img src="resources/images/61686847a00c2e031ce676e6_noun_Law_3469087.png" loading="lazy" width="53" sizes="53px" srcset="resources/images/61686847a00c2e031ce676e6_noun_Law_3469087-p-500.png 500w, resources/images/61686847a00c2e031ce676e6_noun_Law_3469087.png 700w" alt="" class="image">
        <div class="logo-text"><span class="text-span">A</span>LAW</div>
      </a>
    </div>
    <div class="top-menu-list">
        <ul role="list" class="top-menu-list w-list-unstyled">
          <li class="list-item-4" style="width: 100px;">
            <a href="my_case" class="top-menu-link" style="width: 70px;">내 사례<br> </a>
          </li>
          <li class="list-item-4" style="width: 100px;">
            <a href="law_page" class="top-menu-link" style="width: 70px;">변호사</a>
          </li>
          <li class="list-item-4" style="width: 100px;" style="width: 100px;">
            <a href="solo" class="top-menu-link" style="width: 100px;">나홀로소송<br> </a>
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
        <input type = "hidden" id = "mb_id" value="${mb.mb_id}">
        <div class="div-block-8" style="margin-left: 160px;">
          <span style="color: blue; width: 65px;">${mb.mb_name}</span>
          <span>님</span>
          <a href="my_info?mb_id=${mb.mb_id}" class="button-6 w-button" style="margin-left: 30px; padding-left: 25px;">My</a>
          <a href="logout.do" class="button-6 w-button" style="margin-left: 10px;">로그아웃</a>
          </div>      
        </c:when>
        </c:choose>
  </div>
  <div class="div-block-99"></div>
  <div class="div-block-100">
    <div class="text-block-99">내 사례 작성하기</div>
  </div>
  <div class="w-form">
    <form class="form-9" action="http://127.0.0.1:9005/ajax" method="POST">
      <div class="div-block-39">
        <div class="div-block-38">
          <div class="text-block-23">제목</div>
          <input type="text" class="text-field-18 w-input" maxlength="256" name="case_title" placeholder="제목을 입력해 주세요" id="case_title">
        </div>
        <div class="div-block-102">
          <div class="text-block-102">사건 발생일</div>
          <input type="text" class="text-field-22 w-input" maxlength="256" name="case_date" placeholder="사건이 발생한 날짜" id="case_date">
        </div>
        <div class="div-block-103">
          <div class="text-block-103">사건발생 장소</div>
          <input type="text" class="text-field-23 w-input" maxlength="256" name="case_place" placeholder="온라인, 오프라인 , 술집, 회사 등" id="case_place">
        </div>
        <div class="div-block-104">
          <div class="text-block-104">가해자</div>
          <input type="text" class="text-field-24 w-input" maxlength="256" name="perpetrator" placeholder="이름, 닉네임, ID, 가명 등" id="perpetrator">
        </div>
        <div class="div-block-41">
          <div class="text-block-24">내용</div>
        </div>
        <div>
        	<textarea name="case_content" maxlength="5000" id="case_content" placeholder="상세한 내용을 작성해 주세요." class="textarea-2 w-input"></textarea>
        	<input style= "background-color : gray; float: left;margin-left: 70px;width: 130px;" onclick = "insert_case()" id="execute" type="button" value="저장" data-wait="Please wait..." class="submit-button-5 w-button">
        	<input style ="float: left;width: 130px;margin-left: 70px;" type="submit" value="검색" data-wait="Please wait..." class="submit-button-5 w-button">
        </div>
      </div>
      <div class="div-block-39-copy">
        <div class="text-block-105">예시</div>
        <div class="div-block-38">
          <div class="text-block-23">제목</div>
          <div class="text-block-106">남편 외도</div>
        </div>
        <div class="div-block-102">
          <div class="text-block-102">사건 발생일</div>
          <div class="text-block-108">2021-10-25</div>
        </div>
        <div class="div-block-103">
          <div class="text-block-103">사건발생 장소</div>
          <div class="text-block-107">집</div>
        </div>
        <div class="div-block-104">
          <div class="text-block-104">가해자</div>
          <div class="text-block-109">0도</div>
        </div>
        <div class="div-block-41">
          <div class="text-block-24">내용</div>
        </div>
        <div class="text-block-110">남편이 삼년전에 끝낸 상간녀 대상으로 소송하려 합니다.
남편은 백프로 구두로 불륜을 시인한 상태이구요.
저번주 2021.10.26 화요일에 상간녀가 시댁으로 찾아왔어요.
남편과 2014년부터 만나다가 2016년부터 2018 년까지
본격적으로 사귀었고 남편 아이4명 가졌고
낙태했다. 남편한테 사과와 보상을 원했구요.
그때 당시 그 상간녀는 애3있는 유부녀였고 남편과 초등동창입니다. 그 상간녀와 미래를 함께하기로 했는지, 남편은 이혼을 요구했고 제가 응하지 않았더니 말없이 집을 나가서 7년동안 별거 생활을 하게 되었습니다.
남편은 집을 나가 그년과 만났으며 일주일에 삼사일씩 그 상간녀집에 머물렀다고 하네요. 저는 이부분이 동거라 생각됩니다.
그 여자는 결국 이혼을 했고 남편은 이혼하지 않은 상태에서 불륜상태를 유지했습니다.
2021.9.8 일 집에와서 그동안 있던 일을 고백하였고
9월부터 상간녀가 연락과 문자로 협박질을 하고
남편이 연락차단하자 시댁으로 연락하고 찾아오기 직전까지 상간녀는 남편과 시아버지께 일방적인 연락과 문자를 보냈습니다.
상간녀가 시댁으로 찾아온날 시어머니는 저에게 전화하였고
남편과 함께 상간녀를 만나러 시댁으로 갔습니다.
</div>
      </div>
    </form>
    <div class="w-form-done">
      <div>Thank you! Your submission has been received!</div>
    </div>
    <div class="w-form-fail">
      <div>Oops! Something went wrong while submitting the form.</div>
    </div>
  </div>
  
  
  <script type = "text/javascript">

 /*    $('#execute').click(function(){   
       var case_title = $("#case_title").val();
      var case_date = $("#case_date").val();
      var case_place = $("#case_place").val();
      var perpetrator = $("#perpetrator").val();
      var case_content = $("#case_content").val();
      
      var postdata = {
         'case_title':case_title, 'case_date':case_date, 'case_place':case_place, 'perpetrator':perpetrator, 'case_content':case_content
      }
      $.ajax({
         type : 'POST',
         url : "http://127.0.0.1:9001/ajax",
         data : JSON.stringify(postdata),
         dataType : 'json',
         contentType : "application/json",
         success : function(data){
            console.log(data);
            alert('성공');
         },
         error:function(request, status, error){
            alert('실패');
         }
      })
     })*/
     
        function insert_case(){
         $.ajax({
              url : "${path}/insert_case.do",
              type : "GET",
              data : {
                 mb_id : $("#mb_id").val(),
                 case_title : $("#case_title").val(),
                 case_date : $("#case_date").val(),
                 case_place : $("#case_place").val(),
                 perpetrator : $("#perpetrator").val(),
                 case_content : $("#case_content").val()
              },
              dataType: "json",
              success : function(data) {
                    alert("사례 보관함에 저장되었습니다.");
              },
              error : function(){
                 alert("로그인을 해주시기 바랍니다.");
              }
           });
      }
   
  </script>
</body>
</html>
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
  <title>Untitled3</title>
  <meta content="Untitled3" property="og:title">
  <meta content="Untitled3" property="twitter:title">
  <meta content="width=device-width, initial-scale=1" name="viewport">
  <meta content="Webflow" name="generator">
  <link href="resources/css/normalize.css" rel="stylesheet" type="text/css">
  <link href="resources/css/webflow.css" rel="stylesheet" type="text/css">
  <link href="resources/css/seungyus-trendy-project.webflow.css" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.26/webfont.js" type="text/javascript"></script>
  <script type="text/javascript">WebFont.load({  google: {    families: ["Montserrat:100,100italic,200,200italic,300,300italic,400,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic","Vollkorn:400,400italic,700,700italic","Exo:100,100italic,200,200italic,300,300italic,400,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic","Oswald:200,300,400,500,600,700","Changa One:400,400italic","Exo 2:regular"]  }});</script>
  <!-- [if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js" type="text/javascript"></script><![endif] -->
  <script type="text/javascript">!function(o,c){var n=c.documentElement,t=" w-mod-";n.className+=t+"js",("ontouchstart"in o||o.DocumentTouch&&c instanceof DocumentTouch)&&(n.className+=t+"touch")}(window,document);</script>
  <link href="resources/images/favicon.ico" rel="shortcut icon" type="image/x-icon">
  <link href="resources/images/webclip.png" rel="apple-touch-icon">
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
    
	<div class="div-block-77">
    <div>
      <div class="text-block-70"><span class="text-span-25">${mb.mb_name}</span> 님과 함께 사건에 실마리를 찾아 줄 엑스퍼트를 소개합니다.</div>
    </div>
    
       <div class="div-block-80">
      <a href="law_page2" class="link-block-9 w-inline-block">
        <div data-w-id="0c4cc303-452b-ee8d-729d-72f971a59b99" class="div-block-78">
          <div data-w-id="aa10b093-8057-6f0f-a579-9698bd7b2a05" class="text-block-65"><span data-w-id="90adfbac-8f98-f070-daea-463f96cdf446" class="text-span-20">[부동산/재건축재개발/임대차상담 및 관련세무법률]전화상담 </span></div>
          <div class="text-block-66"><span class="text-span-22">대형 로펌 출신 30년 경력 변호사</span></div>
          <div class="text-block-67"><span class="text-span-23">#손해배상</span> <span>#민사사건</span></div>
          <div class="text-block-68"><span class="text-span-24">30,000</span><span class="text-span-21">원</span></div>
          <div class="div-block-79"><img src="https://d3e54v103j8qbb.cloudfront.net/plugins/Basic/assets/placeholder.60f9b1840c.svg" loading="lazy" alt="" class="image-15">
            <div class="text-block-69">이용석</div>
          </div>
        </div>
      </a>
      <a href="law_page2" class="link-block-9 w-inline-block">
        <div data-w-id="3de157ec-3884-c540-c073-1686a0772069" class="div-block-78">
          <div class="text-block-65"><span data-w-id="3de157ec-3884-c540-c073-1686a077206b" class="text-span-20">서울대/사시/형사, 민사 전문 </span></div>
          <div class="text-block-66"><span class="text-span-22">보여주시는 신뢰, 결과로 보답하겠습니다.</span></div>
          <div class="text-block-67"><span class="text-span-23">#형사사건</span> <span>#민사사건</span></div>
          <div class="text-block-68"><span class="text-span-24">20,000</span><span class="text-span-21">원</span></div>
          <div class="div-block-79"><img src="https://d3e54v103j8qbb.cloudfront.net/plugins/Basic/assets/placeholder.60f9b1840c.svg" loading="lazy" alt="" class="image-15">
            <div class="text-block-69">차경규</div>
          </div>
        </div>
      </a>
      <a href="law_page2" class="link-block-9 w-inline-block">
        <div data-w-id="416f0ae4-66ba-2fe1-c39a-0edf4f14fc56" class="div-block-78">
          <div class="text-block-65"><span data-w-id="416f0ae4-66ba-2fe1-c39a-0edf4f14fc58" class="text-span-20">모욕, 명예훼손 전문상담</span></div>
          <div class="text-block-66"><span class="text-span-22">복잡한 문제의 해경방안을 빠르고 시원하게 알려드립니다.</span></div>
          <div class="text-block-67"><span class="text-span-23">#형사사건</span> <span>#민사사건</span><span>#손해배상</span></div>
          <div class="text-block-68"><span class="text-span-24">25,000</span><span class="text-span-21">원</span></div>
          <div class="div-block-79"><img src="https://d3e54v103j8qbb.cloudfront.net/plugins/Basic/assets/placeholder.60f9b1840c.svg" loading="lazy" alt="" class="image-15">
            <div class="text-block-69">정루미</div>
          </div>
        </div>
      </a>
      <a href="law_page2" class="link-block-9 w-inline-block">
        <div data-w-id="7719167f-8c39-8077-910a-8d8e6c54a507" class="div-block-78">
          <div class="text-block-65"><span data-w-id="7719167f-8c39-8077-910a-8d8e6c54a509" class="text-span-20">게임사기, 온라인 모욕 전문 </span></div>
          <div class="text-block-66"><span class="text-span-22">법률 심층상담 -30분이상</span></div>
          <div class="text-block-67"><span class="text-span-23">#형사사건</span> <span>#민사사건</span> <span>#성범죄</span></div>
          <div class="text-block-68"><span class="text-span-24">20,000</span><span class="text-span-21">원</span></div>
          <div class="div-block-79"><img src="https://d3e54v103j8qbb.cloudfront.net/plugins/Basic/assets/placeholder.60f9b1840c.svg" loading="lazy" alt="" class="image-15">
            <div class="text-block-69">송정균</div>
          </div>
        </div>
      </a>
      <a href="law_page2" class="link-block-9 w-inline-block">
        <div data-w-id="9d3a0437-c6e9-ee22-3747-99c264671592" class="div-block-78">
          <div class="text-block-65"><span data-w-id="9d3a0437-c6e9-ee22-3747-99c264671594" class="text-span-20">이혼, 위자료, 재산분할, 양육비분쟁 전문 </span></div>
          <div class="text-block-66"><span class="text-span-22"></span>혼자 해결하지마세요.. 제가 함께 마음에 짐을 짊어져 드리겠습니다.</div>
          <div class="text-block-67"><span class="text-span-23">#가사사건</span> <span>#민사사건</span></div>
          <div class="text-block-68"><span class="text-span-24">30,000</span><span class="text-span-21">원</span></div>
          <div class="div-block-79"><img src="https://d3e54v103j8qbb.cloudfront.net/plugins/Basic/assets/placeholder.60f9b1840c.svg" loading="lazy" alt="" class="image-15">
            <div class="text-block-69">김주혜</div>
          </div>
        </div>
      </a>
      <a href="law_page2" class="link-block-9 w-inline-block">
        <div data-w-id="df62122d-3aa6-d06e-aa4a-567a3ff22925" class="div-block-78">
          <div class="text-block-65"><span data-w-id="df62122d-3aa6-d06e-aa4a-567a3ff22927" class="text-span-20">상속관련 상담 전문</span></div>
          <div class="text-block-66"><span class="text-span-22">한 번의 전화상담으로 사건해결의 실마리를 찾아가시기 바랍니다.</span></div>
          <div class="text-block-67"><span class="text-span-23">#상속전문</span> <span>#부동산</span></div>
          <div class="text-block-68"><span class="text-span-24">20,000</span><span class="text-span-21">원</span></div>
          <div class="div-block-79"><img src="https://d3e54v103j8qbb.cloudfront.net/plugins/Basic/assets/placeholder.60f9b1840c.svg" loading="lazy" alt="" class="image-15">
            <div class="text-block-69">공우성</div>
          </div>
        </div>
      </a>
      <a href="law_page2" class="link-block-9 w-inline-block">
        <div data-w-id="b05f7e6d-57cf-3450-b6d6-df77ad0fe738" class="div-block-78">
          <div class="text-block-65"><span data-w-id="b05f7e6d-57cf-3450-b6d6-df77ad0fe73a" class="text-span-20">이혼, 외도, 친자 등 전문</span></div>
          <div class="text-block-66"><span class="text-span-22">홀로 분쟁을 감당하고 계신가요. 제가 함께 하겠습니다.</span></div>
          <div class="text-block-67"><span class="text-span-23">#형사사건</span> <span>#민사사건</span></div>
          <div class="text-block-68"><span class="text-span-24">25,000</span><span class="text-span-21">원</span></div>
          <div class="div-block-79"><img src="https://d3e54v103j8qbb.cloudfront.net/plugins/Basic/assets/placeholder.60f9b1840c.svg" loading="lazy" alt="" class="image-15">
            <div class="text-block-69">선영도</div>
          </div>
        </div>
      </a>
      <a href="law_page2" class="link-block-9 w-inline-block">
        <div data-w-id="1260c57a-32e8-9506-9664-5ff2678c1e70" class="div-block-78">
          <div class="text-block-65"><span data-w-id="1260c57a-32e8-9506-9664-5ff2678c1e72" class="text-span-20">사기, 합의 전문 변호사</span></div>
          <div class="text-block-66"><span class="text-span-22">한 번의 전화상담으로 사건해결의 실마리를 찾아가시기 바랍니다.</span></div>
          <div class="text-block-67"><span class="text-span-23">#형사사건</span> <span>#민사사건</span></div>
          <div class="text-block-68"><span class="text-span-24">20,000</span><span class="text-span-21">원</span></div>
          <div class="div-block-79"><img src="https://d3e54v103j8qbb.cloudfront.net/plugins/Basic/assets/placeholder.60f9b1840c.svg" loading="lazy" alt="" class="image-15">
            <div class="text-block-69">임석권</div>
          </div>
        </div>
      </a>
      <a href="law_page2" class="link-block-9 w-inline-block">
        <div data-w-id="52c7765d-37da-bf54-176b-235498e0f6e4" class="div-block-78">
          <div class="text-block-65"><span data-w-id="52c7765d-37da-bf54-176b-235498e0f6e6" class="text-span-20">온라인 모욕, 명예훼손 전문</span></div>
          <div class="text-block-66"><span class="text-span-22">답답하신분께 사이다를 선사해 드리겠습니다.</span></div>
          <div class="text-block-67"><span class="text-span-23">#형사사건</span> <span>#민사사건  #손해배상</span></div>
          <div class="text-block-68"><span class="text-span-24">23,000</span><span class="text-span-21">원</span></div>
          <div class="div-block-79"><img src="https://d3e54v103j8qbb.cloudfront.net/plugins/Basic/assets/placeholder.60f9b1840c.svg" loading="lazy" alt="" class="image-15">
            <div class="text-block-69">한민하</div>
          </div>
        </div>
      </a>
      <a href="law_page2" class="link-block-9 w-inline-block">
        <div data-w-id="48f4b283-685b-b8c0-8533-c655d2db732a" class="div-block-78">
          <div class="text-block-65"><span data-w-id="48f4b283-685b-b8c0-8533-c655d2db732c" class="text-span-20">외국인 전문 변호사</span></div>
          <div class="text-block-66"><span class="text-span-22">타국에서 격는 분쟁을 시원하게 해결해 드리겠습니다.</span></div>
          <div class="text-block-67"><span class="text-span-23">#외국인</span> <span>#민사사건</span></div>
          <div class="text-block-68"><span class="text-span-24">30,000</span><span class="text-span-21">원</span></div>
          <div class="div-block-79"><img src="https://d3e54v103j8qbb.cloudfront.net/plugins/Basic/assets/placeholder.60f9b1840c.svg" loading="lazy" alt="" class="image-15">
            <div class="text-block-69">김기남</div>
          </div>
        </div>
      </a>
      <a href="law_page2" class="link-block-9 w-inline-block">
        <div data-w-id="e4c2ea47-e1eb-bbe1-8bbf-9b37ff56cf2f" class="div-block-78">
          <div class="text-block-65"><span data-w-id="e4c2ea47-e1eb-bbe1-8bbf-9b37ff56cf31" class="text-span-20">모욕, 명예훼손 전문 </span></div>
          <div class="text-block-66"><span class="text-span-22">한 번의 전화상담으로 사건해결의 실마리를 찾아가시기 바랍니다.</span></div>
          <div class="text-block-67"><span class="text-span-23">#형사사건</span> <span>#민사사건</span></div>
          <div class="text-block-68"><span class="text-span-24">20,000</span><span class="text-span-21">원</span></div>
          <div class="div-block-79"><img src="https://d3e54v103j8qbb.cloudfront.net/plugins/Basic/assets/placeholder.60f9b1840c.svg" loading="lazy" alt="" class="image-15">
            <div class="text-block-69">황윤규</div>
          </div>
        </div>
      </a>
      <a href="law_page2" class="link-block-9 w-inline-block">
        <div data-w-id="ccc093b3-8693-d6b0-a5b8-986a69e20504" class="div-block-78">
          <div class="text-block-65"><span data-w-id="ccc093b3-8693-d6b0-a5b8-986a69e20506" class="text-span-20">사기, 절도, 폭행 전문 </span></div>
          <div class="text-block-66"><span class="text-span-22">경험을 발판 삼아 당신에 분쟁을 해결해 드리겠습니다.</span></div>
          <div class="text-block-67"><span class="text-span-23">#형사사건</span> <span>#민사사건</span></div>
          <div class="text-block-68"><span class="text-span-24">10,000</span><span class="text-span-21">원</span></div>
          <div class="div-block-79"><img src="https://d3e54v103j8qbb.cloudfront.net/plugins/Basic/assets/placeholder.60f9b1840c.svg" loading="lazy" alt="" class="image-15">
            <div class="text-block-69">박승연</div>
          </div>
        </div>
      </a>
    </div>
    
  </div>
  
  <div class="div-block-53">
    <div class="text-block-29">&lt;</div>
    <ul role="list" class="list w-list-unstyled">
      <li class="list-item-5">1</li>
      <li class="list-item-6">2</li>
      <li class="list-item-7">3</li>
      <li class="list-item-8">4</li>
      <li class="list-item-9">5</li>
    </ul>
    <div class="text-block-30">&gt;</div>
  </div>
  <script src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=615d36d209b8655960069172" type="text/javascript" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
  <script src="resources/js/webflow.js" type="text/javascript"></script>

</body>
</html>
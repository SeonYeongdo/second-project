<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page session="true" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ALaw</title>
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
  <link href="resources/images/favicon.ico" rel="shortcut icon" type="image/x-icon">
  <link href="resources/images/webclip.png" rel="apple-touch-icon">
</head>
<body>
 <div class="div-block-6">
 	<section>
    <div class="top-nav">
      <div class="logo-area">
        <a href="main" aria-current="page" class="link-block w-inline-block w--current"><img src="resources/images/61686847a00c2e031ce676e6_noun_Law_3469087.png" loading="lazy" width="53" sizes="53px" srcset="resources/images/61686847a00c2e031ce676e6_noun_Law_3469087-p-500.png 500w, resources/images/61686847a00c2e031ce676e6_noun_Law_3469087.png 700w" alt="" class="image">
          <div class="logo-text"><span class="text-span">A</span>LAW</div>
        </a>
      </div>
      <div class="top-menu-list">
        <ul role="list" class="top-menu-list w-list-unstyled">
          <li class="list-item-4" style="width: 100px;">
            <a href="my_case" class="top-menu-link" style="width: 70px;">??? ??????<br>???</a>
          </li>
          <li class="list-item-4" style="width: 100px;">
            <a href="law_page" class="top-menu-link" style="width: 70px;">?????????</a>
          </li>
          <li class="list-item-4" style="width: 100px;" style="width: 100px;">
            <a href="solo" class="top-menu-link" style="width: 100px;">???????????????<br>???</a>
          </li>
        </ul>
      </div>
     
       
        <c:choose> 
        <c:when test="${mb == null}">
        <div class="div-block-8">  
          <div class="logjoin-box">
          <a href="login" class="button-5 w-button">?????????</a>
          </div>
          <div class="logjoin-box">
          <a href="join" class="button-6 w-button">????????????</a>
        </div>
        </div>
        </c:when>
        
        <c:when test="${mb != null}">
        <div class="div-block-8" style="margin-left: 160px;">
          <span style="color: blue; width: 65px;">${mb.mb_name}</span>
          <span>???</span>
          <a href="my_info?mb_id=${mb.mb_id}" class="button-6 w-button" style="margin-left: 30px; padding-left: 25px;">My</a>
          <a href="logout.do" class="button-6 w-button" style="margin-left: 10px;">????????????</a>
          </div>      
        </c:when>
        </c:choose>
      
    </div>
    </section>
    
    
    <div class="div-block">
      <div>
        <div class="text-block"><span>??? ?????? ????????? ????????? <br><br>?????? ????????? ????????? ?????? ?????????!</span></div>
      </div>
      <div class="senter-list">
        <div>
          <div class="text-block-4">????????????</div>
        </div>
        <div class="div-block-3"></div>
        <div class="div-block-4">
          <a href="my_case" class="link-2">????????????</a>
          <a href="my_case" class="button-2 w-button">Go</a>
        </div>
      </div>
      
      <div class="div-block-2">
        <div class="search-input1">
          <form action="${path}/search_result" class="search-2 w-form">
         	 <input type="search" class="search-input-2 w-input" maxlength="256" name="search_word" placeholder="???????????? ???????????????." id="search_word">
         	 <input type="submit" value="Go" class="search-button-2 w-button">
         </form>
        </div>
      </div>   
    </div>
    
    <div class="div-block-137">
      <div class="text-block-138">ALAW ???????????? ????????????</div><img style="filter: invert(88%) sepia(12%) saturate(6016%) hue-rotate(319deg) brightness(104%) contrast(94%);" src="resources/images/???Pngtree???vector-down-arrow-icon_4231913.png" loading="lazy" width="22" sizes="20px" srcset="resources/images/???Pngtree???vector-down-arrow-icon_4231913.png 500w, resources/images/???Pngtree???vector-down-arrow-icon_4231913.png 800w, resources/images/???Pngtree???vector-down-arrow-icon_4231913.png 1024w" alt="" class="image-28">
    </div>
    <div class="div-block-136"></div>
    <div class="div-block-12">
      <div class="div-block-138">
        <div class="div-block-13">
          <h2 class="heading">??? <span class="text-span-53">??????</span>?????????<br><span class="text-span-54">????????????</span> ????????? </h2>
          <div class="text-block-139">????????? ?????? ????????? ????????? ????????? ????????? ???????????????!</div>
        </div>
        <div class="div-block-14"><img src="resources/images/??????-??????-2021-11-06-103806.png" loading="lazy" width="676" alt="" class="image-29"></div>
      </div>
    </div>
    <div class="div-block-12">
      <div class="div-block-138">
        <div class="div-block-14"><img style="margin-left : 10px;margin-top :10px" src="resources/images/??????-??????-2021-11-06-111749.png" loading="lazy" width="677" sizes="(max-width: 479px) 100vw, 61vw" srcset="resources/images/??????-??????-2021-11-06-111749.png 500w, resources/images/??????-??????-2021-11-06-111749.png 800w, resources/images/??????-??????-2021-11-06-111749.png 1080w, resources/images/??????-??????-2021-11-06-111749.png 1365w" alt=""></div>
        <div class="div-block-13-copy">
          <h2 class="heading-copy"><span class="text-span-55">A</span>LAW??? <span class="text-span-56">??????</span>??????<br>?????????<span class="text-span-57">??????</span><br></h2>
          <div class="text-block-139">????????? ?????? ????????? ????????? ??????????????????!</div>
        </div>
      </div>
    </div>
    <div class="div-block-12">
      <div class="div-block-138">
        <div class="div-block-13">
          <h2 class="heading">????????? ??? ??? ??????<br> <span class="text-span-60">?????? </span><span class="text-span-59">??????</span> ?????????</h2>
          <div class="text-block-139">????????? ??????????????? ?????? ????????? ???????????????!</div>
        </div>
        <div class="div-block-14"><img style="margin-top : 10px; margin-right : 10px;]" src="resources/images/??????-??????-2021-11-06-112901.png" loading="lazy" width="676" alt="" class="image-29"></div>
      </div>
    </div>
    <div class="div-block-12">
      <div class="div-block-138">
        <div class="div-block-14 w-clearfix"><img src="resources/images/??????-??????-2021-11-06-113238.png" loading="lazy" width="338" alt="" class="image-30"><img src="resources/images/??????-??????-2021-11-06-113254.png" loading="lazy" width="338" alt="" class="image-31"></div>
        <div class="div-block-13-copy">
          <h2 class="heading-copy">????????? ??????<span class="text-span-61">??????</span><br><span class="text-span-62">??????</span> ?????????</h2>
          <div class="text-block-139">????????? ??????????????? ????????? ???????????? ???????????????!</div>
        </div>
      </div>
    </div>
    <div class="div-block-136">
      <footer id="footer" class="footer-3 wf-section">
        <div class="w-container">
          <div class="footer-flex-container">
            <a href="#" class="footer-logo-link-3"><img src="resources/images/61686847a00c2e031ce676e6_noun_Law_3469087.png" srcset="resources/images/61686847a00c2e031ce676e6_noun_Law_3469087-p-500.png 500w, resources/images/61686847a00c2e031ce676e6_noun_Law_3469087.png 700w" sizes="60px" alt="" class="footer-image-3"></a>
            <div class="div-block-139">
              <h2 class="footer-heading">????????????????????????</h2>
              <ul role="list" class="w-list-unstyled">
                <li>
                  <a href="#" class="footer-link-2">???????????? 1???</a>
                </li>
              </ul>
            </div>
            <div class="div-block-140">
              <h2 class="footer-heading">??????</h2>
              <ul role="list" class="w-list-unstyled">
                <li>
                  <a href="#" class="footer-link-2">?????????</a>
                </li>
              </ul>
            </div>
            <div class="div-block-141">
              <h2 class="footer-heading">????????????</h2>
              <ul role="list" class="w-list-unstyled">
                <li>
                  <a href="#" class="footer-link-2">?????????</a>
                  <a href="#" class="footer-link-2">?????????</a>
                  <a href="#" class="footer-link-2">?????????</a>
                  <a href="#" class="footer-link-2">?????????</a>
                </li>
              </ul>
            </div>
          </div>
          <div>Copyright ?? 2021 My Company. All rights reserved.</div>
        </div>
      </footer>
    </div>
  </div>
  <script src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=615d36d209b8655960069172" type="text/javascript" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
  <script src="js/webflow.js" type="text/javascript"></script>
</body>
</html>
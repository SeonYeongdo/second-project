<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page session="true" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<%@page import="com.alaw.vo.memberVO"%>
<%@page import="com.alaw.vo.precedentVO"%>
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
	 <script type="text/javascript">WebFont.load({  google: {    families: ["Montserrat:100,100italic,200,200italic,300,300italic,400,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic","Vollkorn:400,400italic,700,700italic","Exo:100,100italic,200,200italic,300,300italic,400,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic","Oswald:200,300,400,500,600,700","Changa One:400,400italic"]  }});</script>
	 <!-- [if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js" type="text/javascript"></script><![endif] -->
	 <script type="text/javascript">!function(o,c){var n=c.documentElement,t=" w-mod-";n.className+=t+"js",("ontouchstart"in o||o.DocumentTouch&&c instanceof DocumentTouch)&&(n.className+=t+"touch")}(window,document);</script>
	 <link href="images/favicon.ico" rel="shortcut icon" type="image/x-icon">
	 <link href="images/webclip.png" rel="apple-touch-icon">
	 
	 <script type="text/javascript">
	
		function wishlist() {
			$.ajax({
	  			url : "${path}/wishlist.do",
	  			type : "get",
	  			data : {
	  				prec_name : $("#prec_name").val(),
	  				case_name : $("#case_name").val(),
	  				mb_id : $("#mb_id").val()
	  			},
	  			dataType: "json",
	  			success : function(data) {
	  					alert("??????????????? ?????????????????????.");
	  				
	  			},
	  			error : function(){
	  				
	  				alert("?????? ?????? ???????????????.");
	  			}
	  		});
		}
	
	</script> 
</head>
<body>
	<body class="body">
  <div class="top-sub">
    <a href="main" class="link-block-8 w-inline-block">
      <div class="logo-area"><img src="images/61686847a00c2e031ce676e6_noun_Law_3469087.png" loading="lazy" srcset="images/61686847a00c2e031ce676e6_noun_Law_3469087-p-500.png 500w, images/61686847a00c2e031ce676e6_noun_Law_3469087.png 700w" sizes="53px" alt="" class="image">
        <div class="logo-text"><span class="text-span">A</span>LAW</div>
      </div>
    </a>
    
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
          <input type="hidden" value="${mb.mb_id}" id="mb_id">
          <span>???</span>
          <a href="my_info?mb_id=${mb.mb_id}" class="button-6 w-button" style="margin-left: 30px; padding-left: 25px;">My</a>
          <a href="logout.do" class="button-6 w-button" style="margin-left: 10px;">????????????</a>
          </div>      
        </c:when>
        </c:choose>
   
  </div>
  <div class="div-block-58">
    <div class="div-block-59">
      
      <div>
        <div class="div-block-64"><img src="resources/images/icons8-book-64.png" loading="lazy" alt="" class="image-6">
          <div class="text-block-41">?????? ??????</div>
        </div>
        <form class="w-clearfix w-form" onsubmit = 'return false'>
        
        <input type="text" class="search-input-3 w-input" maxlength="256" name="keyword" id = "keyword">
        <input type="button" value="??????" onclick='getsearch()'  class="search-button-3 w-button">
        
          <div class="div-block-62">
            <div class="text-block-35" id = "term_name"></div>
            <div class="text-block-36"><span class="text-span-19" id = "term_content"></span></div>
          </div>
        </form>
      </div>
      
      <div class="side-line"></div>
      <div class="div-block-63">
        <div class="div-block-64"><img src="resources/images/icons8-book-64.png" loading="lazy" alt="" class="image-6">
          <div class="text-block-41">?????? ??????</div>
        </div>
        <div class="w-clearfix">
          <div class="text-block-43">??</div>
          <div class="text-block-38">????????? 4293??????864</div>
          <div class="text-block-43">??</div>
          <div class="text-block-39">????????? 4293??????864</div>
          <div class="text-block-43">??</div>
          <div class="text-block-40">????????? 4293??????864</div>
        </div>
      </div>
      <div class="side-line"></div>
      <div class="div-block-65">
        <div class="div-block-66"><img src="resources/images/icons8-??????-50.png" loading="lazy" alt="" class="image-7">
          <div class="text-block-42"> ?????? ??????</div>
        </div>
        <div>
          <div class="w-clearfix">
            <div class="text-block-43">??</div>
            <div class="text-block-44">?????? ???27???</div>
            <div class="text-block-43">??</div>
            <div class="text-block-45">?????? ???27???</div>
            <div class="text-block-43">??</div>
            <div class="text-block-46">?????? ???27???</div>
            <div class="text-block-43">??</div>
            <div class="text-block-46">?????? ???27???</div>
            <div class="text-block-43">??</div>
            <div class="text-block-46">?????? ???27???</div>
          </div>
        </div>
      </div>
    </div>
    <div class="div-block-60">
    <div class="text-block-47"><span class="text-span-6">${precVO.prec_name}</span></div>
      <div class="text-block-58">????????????</div>
      <div class="text-block-59">${precVO.prec_summary}</div>
      <div class="text-block-48"><span class="text-span-7">${precVO.prec_court}</span></div>
      <div class="text-block-49"><span class="text-span-8">??? ?????????????????????????????????????</span></div>
      <div class="text-block-124"><span>${precVO.prec_front}</span></div>
      <div class="text-block-54">??? ?????????????????????????????????????????</div>
      <div class="text-block-55"><span class="text-span-17">${precVO.prec_result}</span></div>
      <div class="text-block-56">??? ?????????????????????????????????????????</div>
      <div class="text-block-57"><span>${precVO.prec_cause}</span></div>
    </div>
    <div class="div-block-61">
      <div class="div-block-74">
        <a href="#" class="link-block-10 w-inline-block"><img src="resources/images/icons8-??????-??????-??????-80.png" loading="lazy" alt="" class="image-14">
          <div class="text-block-62" onclick="wishlist()">????????????<input type="hidden" id="prec_name" value= "${precVO.prec_name}"><input type="hidden" id="case_name" value="${precVO.case_name}"></div>
        </a>
      </div>
      <div class="div-block-72">
        <a href="solo" class="link-block-11 w-inline-block"><img src="resources/images/icons8-??????-??????-50.png" loading="lazy" alt="" class="image-12">
          <div class="text-block-63">???????????????</div>
        </a>
      </div>
      <div class="div-block-73">
        <a href="law_page" class="link-block-12 w-inline-block"><img src="resources/images/icons8-lawyer-50.png" loading="lazy" alt="" class="image-13">
          <div class="text-block-64">????????? ??????</div>
        </a>
      </div>
    </div>
  </div>
  <div style = "height: 50px;"></div>
  <script src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=615d36d209b8655960069172" type="text/javascript" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
  <script src="js/webflow.js" type="text/javascript"></script>


</body>
 <script type="text/javascript">
 
 $(document).keypress(function(e){
	    if(e.keyCode==13){
	    	getsearch();
	    }
	  });

 
 function getsearch(){
		search = $("#keyword").val();
		
		$.ajax({
		    url: 'Search_key',
		    type: 'POST',
		    dataType: 'text', //??????????????? ?????? ?????? ???????????? ??????
		    contentType : 'text/plain; charset=utf-8;',//?????? ????????? ????????? ???????????? ??????
		    data: search,
		    success: function(search_data){
		    	search_a = search_data.split("/")
		    	$('#term_name').text(search_a[0]);
		    	$('#term_content').text(search_a[1]);
		    },
		    error: function (){        
		        alert("?????? ????????? ????????? ????????? ?????????");              
		    }
		  });
		
	}
 
		
		
	
 </script>

</html>
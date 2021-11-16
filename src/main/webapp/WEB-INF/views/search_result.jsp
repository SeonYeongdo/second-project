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
  
  <script src="./js/jquery-3.6.0.min.js"></script>
  <script type="text/javascript">
	next_list(1,1);
	
	var arr=null; 
	var pageSize = 10;
	var maxRow=10;

	function getParam(sname) {
	    var params = location.search.substr(location.search.indexOf("?") + 1);
	    var sval = "";
	    params = params.split("&");
	    for (var i = 0; i < params.length; i++) {
	        temp = params[i].split("=");
	        if ([temp[0]] == sname) { sval = temp[1]; }
	    }
	    return sval;
	}
	
	
	function button_create(data_list,startPage){
		
		var pageNum=null;
		
		if(data_list.length%maxRow == 0){
			pageNum = data_list.length/maxRow;
		}
		
		else{
			pageNum =Math.floor(data_list.length/maxRow)+1;  
		}
		
		var currentPage=startPage;
		
		for(var i =0;i<pageNum;i++){
			arr=data_list;
			$('#controller').append('<button onclick="page('+currentPage+')" id="'+currentPage+'" class="button">'+currentPage+'</button>');
			currentPage= currentPage+1;
		}
		
		var next_startRow=data_list[data_list.length-1].num+1;
		
		if(pageNum>=pageSize){
			$('#controller').append('<button onclick="next_list('+next_startRow+','+(startPage+pageSize)+')" class="next" id="next'+currentPage+'">다음</button>');
			//여기서 currentPage 는 전에 계속 더했던 값이 들어있기 때문에 다음페이지 에서의 페이지블럭의 첫 시작수 이다.
		}
		
	 	if(startPage >= pageSize+1){//pageSize+1 -->첫 페이지 에서는 이전 버튼이 생기지 않으므로 pageSize+1 이상 일 때만 이전 버튼이 생긴다
	 		var before_num = data_list[0].num-(pageSize*maxRow);
	 		var before_page = startPage-pageSize;
	 		
			$('#controller').append('<button onclick="before_list('+before_num+','+before_page+')" class="before" id="before'+before_page+'">이전</button>');
		} 
	}
	
	//'다음' 버튼 클릭시 이전 페이지에서의 '이전','다음','각 페이지' 버튼 삭제
	function next_button_delete(startPage){
		if(startPage >= pageSize+1){ // startPage 값이 pageSize+1 만큼의 크기일때 생기기 때문 
			$('#next'+startPage).remove();
			
			if(startPage >=pageSize*2+1){ //이전 버튼은 startPage 값이 pageSize*2+1 만큼의 크기일때 생기기 때문 
				$('#before'+(startPage-pageSize*2)).remove();
			}
	
			startPage=startPage-pageSize;
			for(var i=0;i<pageSize;i++){
				$('#'+startPage).remove();
				startPage=startPage+1;
			}	
		}
	}
	
	//이전 페이지 버튼 클릭시 전화면에 나왔던 버튼 삭제
	function before_button_delete(before_page){
		
		$('#before'+before_page).remove();
		$('#next'+(before_page+pageSize*2)).remove(); //이전 버튼 클릭시 페이지 에서 없애야할 다음 버튼은 before_page+pageSize*2 의 값을 가지고 있다
		
		before_page=before_page+pageSize;
		for(var i=0;i<pageSize;i++){
			$('#'+before_page).remove();
			before_page=before_page+1;
		}
	}
	
	//이전 버튼이 눌린다면 그에 맞는 버튼들이 생성, 삭제 와 해당 리스트가 출력되기 위한 메소드 
	function before_list(before_num,before_page){
		var search = decodeURI(getParam("search"));
		$.ajax({
			url:'item',
			method:'post',
			dataType :'json',
			data :{"num":before_num, "search":search}, //서치값 가져오기
			// 한 페이지 에서 가져와야하는 양이 정해저 있으므로 어디 페이지에서 요청했는지 알기위해 가져올DB의 시작 num을 같이 넘겨 준다 
			success:function(data_list){
			
				// DB를 통해 가져왔는데 가져온 양이 테이블 행의 갯수인 10 보다 적으면 html의 테이블은 이전값을 가지고 있으므로 안보이게 .hide()를 사용해주어야 한다 
				//서치값 설정
				if(data_list.length<10){
					list_write(data_list);
					
					button_create(data_list,before_page);
					before_button_delete(before_page);
				}
				else{
					
					print_list(data_list);
					button_create(data_list ,before_page);
					before_button_delete(before_page);
				}
		
			},
			error:function(e){
				alert(e);
			}
			
		});
		
	}
	
	//다음 버튼이 눌린다면 그에 맞는 버튼들이 생성, 삭제 와 해당 리스트가 출력되기 위한 메소드 
	function next_list(startRow,startPage){
		var search = decodeURI(getParam("search"));
		$.ajax({
			/* jsp 시작하면서 바로 border서블릿과 비동기 통신으로 DB 에있는 내용을 가져온다 */
			url:'item',
			method:'post',
			dataType :'json',
			data :{"num":startRow, "search":search},/* 한 페이지 에서 가져와야하는 양이 정해저 있으므로 어디 페이지에서 요청했는지 알기위해 가져올DB의 시작 num을 같이 넘겨 준다 */
			success:function(data_list){
			
				if(data_list.length<10){/* DB를 통해 가져왔는데 가져온 양이 테이블 행의 갯수인 10 보다 적으면 html의 테이블은 이전값을 가지고 있으므로 안보이게 .hide()를 사용해주어야 한다 */
					list_write(data_list);
					button_create(data_list,startPage);
					next_button_delete(startPage);
				}
				
				else{				
					print_list(data_list);
					button_create(data_list ,startPage);
					next_button_delete(startPage);
				}
				
			},
			error:function(e){
				alert(e);
			}
			
		});
		
	}
	
	//jsonArray타입의 객체의 갯수가 10개보다 적을경우 객체를 매개변수로 받아 출력하는 함수이다.
	function list_write(data_list){
		
		for(var i =0 ; i<data_list.length;i++){//jquery 문을통해 태그안의 내용을 바꾸어준다 --> .text()사용
			
			$('#num'+i).text(data_list[i].num); 
			$('#pro_name'+i).text(data_list[i].pro_name);
			$('#pro_price'+i).text(data_list[i].pro_price);
			$('#pro_voucher'+i).text(data_list[i].pro_voucher);
			$('#pro_con_name'+i).text(data_list[i].pro_con_name);
			$('#pro_img'+i).text(data_list[i].pro_img);
		}
		
		for(var i =data_list.length;i<12;i++){//jsonArray타입의 객체의 갯수가 10개보다 적을경우 데이터가 들어가지 않는 행은 안보임 처리를 해준다
			$('#num'+i).hide(); 
			$('#pro_name'+i).hide();
			$('#pro_price'+i).hide();
			$('#pro_voucher'+i).hide();
			$('#pro_con_name'+i).hide();
			$('#pro_img'+i).hide();
		}
		
	}
	
	//클로저 함수 --> 클릭된 버튼의 값에 맞게 불러온 데이터 를 슬라이싱 해서 보여줌
	//클릭된 버튼의 값을 사용해서 슬라이싱 범위인 startNum,endNum을 지정해 준다.
	//한 페이지 에는 페이지안에 속해있는 페이지 블럭에 맞는 게시물(레코드) 수가 있기 때문이다.
	//--->한 페이지 가 가지고 있는 배열안에서 그때그때 해당페이지 블럭을 클릭 한다면 거기 범위에 맞는 데이터를 가져오기 위해 슬라이싱 해줄 필요가 있다
	function page(currentPage){
		
		var startNum = (currentPage-1)*10+1;
		var endNum = currentPage*10;
		
		var start_index=0;
		var end_index=0;
		
		 //endNum 이 해당 배열의 마지막 숫자보다 크다면 다시 슬라이싱이 제대로 되지 않으므로 범위를 다시 지정해 주어야 한다
		 //구분 하기 위해 check라는 변수를 사용해서 check 값이 변하지 않는다면 endNum의 범위를 다시 지정해준다
		var check=null;
		
		for(var i = 0; i<arr.length;i++){
			if(arr[i].num==startNum){
				start_index=i;
			}
			if(arr[i].num==endNum){
				end_index=i;
				check=1;
			}
			
		}
		
		var new_arr = new Array();
		
		if(check != 1){
			end_index=arr.length-1; // endNum의 는 배열의 마지막 인덱스 번호이다. 
		}
			
		new_arr = arr.slice(start_index, end_index+1);	
		
		
		if(new_arr.length<maxRow){//데이터가 maxRow보다 작다면 데이터를 출력하는 데에 있어서 다르게 처리해주어야 함
			list_write(new_arr);
		}
		else{
			print_list(new_arr);
		} 
		
	
	}
	
	//10개 보다 큰 게시물이 출력 될때 이전의 데이터는 10개보다 작을수 있으므로
	//.hide()메소드가 사용되어 가려져 있을 확률 이 있다
	//그래서 전부 .show() 로 보여준다음
	
	//해당 게시물을 출력한다
	function print_list(data_list){
		for(var i=0;i<12;i++){
			$('#num'+i).show();
			$('#pro_name'+i).show();
			$('#pro_price'+i).show();
			$('#pro_vocher'+i).show();
			$('#pro_con_name'+i).show();
			$('#pro_img'+i).show();
			
			$('#num'+i).text(data_list[i].num);
			$('#pro_name'+i).text(data_list[i].pro_name);
			$('#pro_price'+i).text(data_list[i].pro_price);
			$('#pro_vocher'+i).text(data_list[i].pro_voucher);
			$('#pro_con_name'+i).text(data_list[i].pro_con_name);
			$('#pro_img'+i).attr("src",data_list[i].pro_img); //속성값 추가하기
			/* $( 'h1' ).attr( 'title', 'Hello' ); >> 이런식으로속성을 추가할수있어용 */
		}
	}
  
  </script>

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
     
        <div class="div-block-46">
          <div class="div-block-48"><img src="resources/images/icons8-답변-정렬-24.png" loading="lazy" alt="" class="image-3">
            <div class="text-block-25">사건 종류</div>
          </div>
         <form name="ctype">
         <input type="hidden" id="search_wordd" value="${search_word}">
          <!--  <form action="${path}/search_type?search_word=${search_word}" name="ctype"> -->
          <div class="div-block-49"> 
             <label class="radio-button-field w-radio">
                <input checked = "checked" type="radio" id="case_all" name="case_type" value="전체" class="w-form-formradioinput radio-button w-radio-input">
                   <span for="all_-3" class="radio-button-label w-form-label">전체</span>
             </label>
             <label class="radio-button-field w-radio">
                <input type="radio" id="case_ms" name="case_type" value="민사" class="w-form-formradioinput radio-button w-radio-input">
                   <span for="all_-4" class="radio-button-label w-form-label">민사</span>
             </label>
             <label class="radio-button-field w-radio">
                <input type="radio" id="case_hs" name="case_type" value="형사" class="w-form-formradioinput radio-button w-radio-input">
                   <span for="all_-4" class="radio-button-label w-form-label">형사</span>
             </label>
             <label class="radio-button-field w-radio">
                <input type="radio" id="case_gs" name="case_type" value="가사" class="w-form-formradioinput radio-button w-radio-input">
                   <span for="all_-4" class="radio-button-label w-form-label">가사</span>
             </label>
             <label class="radio-button-field w-radio">
                <input type="radio" id="case_hj" name="case_type" value="행정" class="w-form-formradioinput radio-button w-radio-input">
                   <span for="all_-4" class="radio-button-label w-form-label">행정</span>
             </label>
             
             <label class="radio-button-field w-radio">
                <input type="radio" id="case_th" name="case_type" value="특허" class="w-form-formradioinput radio-button w-radio-input">
                   <span for="all_-5" class="radio-button-label w-form-label">특허</span>
             </label>
             <label class="radio-button-field w-radio">
                <input type="radio" id="case_etc" name="case_type" value="기타" class="w-form-formradioinput radio-button w-radio-input">
                   <span for="all_-5" class="radio-button-label w-form-label">기타</span>
                   
             </label>
          </div>
          </form>
        </div>
        
       
        
        
    
     
    </div>
    <div class="div-block-45">
      <div>
        <div class="text-block-28"><span class="text-span-5">${mb.mb_name}</span>님의 키워드 검색 결과입니다.</div>
      </div>
      <div id="cases-div">
   <c:forEach var = "searchvo" items = "${list}">
      <div class="content-box w-clearfix">
        <div>
          <a href="${path}/docu_page?prec_seq=${searchvo.prec_seq}" class="link-6">
             <span>${searchvo.prec_name}</span>
             <span>${searchvo.case_name}</span>
          </a>
        </div>
        <div class="div-block-51 w-clearfix">
          <div class="text-block-26">
             <span>${searchvo.prec_cause}</span>
          </div>
        </div>
        <div data-w-id="aca52253-c51d-adcd-1223-7b6f285bd710" class="div-block-50">
          <div data-w-id="43b155ee-5423-d62e-b27d-1a6c0c6ad8fd" class="text-block-27"><span>주문</span><p class="arrow_box">${searchvo.prec_result}</p></div>
          <div class="container-2 w-container">
            <div class="text-block-125">${searchvo.prec_result}</div>
          </div>
        </div>
        <div class="div-block-52"></div>
      </div>
    </c:forEach>
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
    </div>
  </div>
  <div class="div-block-54"></div>
  <script src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=615d36d209b8655960069172" type="text/javascript" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script src="js/webflow.js" type="text/javascript"></script>
</body>
<script type="text/javascript">

  $("input[type=radio]").click(function() {
  
   var selectedId = $(this).attr("id");
   
    console.log(selectedId);
    $.ajax({
         url : "./search_type",
         type : "POST",
         data : {
            search_type : selectedId,
            search_wordd : $("#search_wordd").val()            
         },
         
         success: function(data) {
              console.log(data.type_list);
              $("#cases-div").empty();
              $.each(data.type_list, function (index, v) {
                 var caseDivHtml = ""
                   + "<div class='content-box w-clearfix'>"
                      + "<div>"
                         + "<a href='/com/docu_page?prec_seq="+v.prec_seq+"' class='link-6'>"
                            + "<span>" + v.prec_name + "</span>"
                            + "<span>" + v.case_name + "</span>"
                         + "</a>"
                      + "</div>"
                      + "<div class='div-block-51 w-clearfix'>"
                         + "<div class='text-block-26' style='height:80px;'>"
                            + "<span>" + v.prec_cause + "</span>"
                         + "</div>"
                      + "</div>"
                      + "<div data-w-id='aca52253-c51d-adcd-1223-7b6f285bd710' class='div-block-50'>"
                         + "<div data-w-id='43b155ee-5423-d62e-b27d-1a6c0c6ad8fd' class='text-block-27'>"
                            + "<span>주문</span><p class='arrow_box'>"+v.prec_result+"</p>"
                         + "</div>"
                         + "<div class='container-2 w-container'>"
                            + "<div class='text-block-125'>"+v.prec_result+"</div>"
                         + "</div>"
                      + "</div>"
                      + "<div class='div-block-52'></div>"
                   + "</div>";
                   $("#cases-div").append(caseDivHtml);
              });
         }
         
      });
});  


</script>


</html>
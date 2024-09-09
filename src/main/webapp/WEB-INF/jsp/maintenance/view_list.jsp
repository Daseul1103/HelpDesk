<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>하이브 시스템 유지보수</title>
    <link rel="stylesheet" href="/css/maintenance/maintenance.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    
    <!-- dataTable 관련 css/js 파일 -->
    <link rel="stylesheet" href="https://cdn.datatables.net/2.1.2/css/jquery.dataTables.min.css">
    <script src="//cdn.datatables.net/2.1.2/js/dataTables.min.js"></script>
</head>
<body>
    <div class="body-wrap">
        <div class="menu-wrap">
            <div class="menu">
                <div class="logo-wrap">
                    <div class="logo_img"></div>
                </div>
                <div class="menu_container">
                    <p><a href="/home.do">장비 관리</a></p>
                    <p><a href="/customer.do">고객사 관리</a></p>
                    <p><a href="/project.do">프로젝트 관리</a></p>
                    <p><a href="/maintenance.do">유지보수 관리</a></p>
                    <p><a href="/helpDeskEmp.do">Help Desk</a></p>
                </div>
                <div class="user-wrap">
                    <div class="userImg"> <!-- 유저 이미지 div -->

                    </div>
                    <p><span style="color: #3366CC;">${sessionScope.MEMBER_NAME}</span> 님 &nbsp 환영합니다. </p> <!-- 로그인 정보 -->
                    <div class="user_funtion_horizontal"></div> <!-- 구분선 세로 div -->
                    <p class="logout"><a href="/userLogout.do">로그아웃</a></p> <!-- 로그아웃 버튼 -->
                </div>
            </div>
            <div class="mini-menu">
                <div class="now-mini_menu"><a href="/maintenance.do" style="color:white;">유지보수 관리</a></div> <!-- 현재 위치의 메뉴 -->  <!-- 1. 변경 메뉴에 맞게 내용 변경하기 -->
                <div class="now-mini_menu_2"><a href="/calendar.do">유지보수 캘린더 </a></div>
            </div>
        </div> <!-- 상단 메뉴바 wrap -->
        <div class="content-wrap"> 
            <div class="contentTitle_container">
                <div class="contentTitle-wrap">
                    <h1 id="month_title"></h1> <!-- 2. 변경 메뉴에 맞게 내용 변경 하기 -->
                </div>
                <div class="search-wrap">
                    <!-- <form name="searchForm" method="post">
                        <div class="search_container"> 
                            <select name="searchOption" class="searchOption"> 
                                <option value="all">전체</option>
                                <option value="PROJECT_NAME">사업명</option>
                                <option value="CUSTOMER_COMPANY">고객사</option>
                                <option value="CONTRACT_TYPE">계약 유형</option>
                                <option value="START_DATE">시작일</option>
                                <option value="END_DATE">종료일</option>
                            </select>
                            <p class="search_p">검색 :</p>
                            <input type="text" name="keyword" placeholder="검색어를 입력하세요.">
                            <button class="searchButton">검색</button>
                        </div>
                    </form> -->
                </div>
            </div>
            <div class="content_container">
                <div class="mainContent-wrap">
                    <input type="hidden" id="INSPECTION_DATE" value="${map.DATE}"> <!-- 월 추출을 위해 필요 -->
            	    <input type="hidden" id="BNO" value="${map.BNO}"> <!-- 상세로 이동하기 위해 필요 -->
                    <table id="mainTable">
                        <thead>
                            <tr>
                                <th style="width: 100px;">
                                    <div class="th_div">No</div> <!-- 테이블 요소의 높이를 고정시키기 위해 div 태그 사용-->
                                </th>
                                <th style="width: 340px;">
                                    <div class="th_div">점검일</div>
                                </th>
                                <th style="width: 180px;">
                                    <div class="th_div">점검자</div>
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="row" items="${map.list}">
                            <tr>
                                <td>
                                    <div class="td_div" style="height:35px;">
                                        <p></p>
                                    </div>
                                </td>
                                <td>
                                    <div class="td_div"><a href="viewList.do?INO=${row.INSPECTION_ID}">${row.INSPECTION_DATE}</a></div>
                                </td>
                                <td>
                                    <div class="td_div"><a href="viewList.do?INO=${row.INSPECTION_ID}">${row.INSPECTOR}</a></div>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
                <div class="button-wrap">
                    <button id="insertButton" class="insertButton">등록</button>
                </div>
            </div>
        </div> <!-- 콘텐츠 wrap -->
    </div>

    <script>
        $(document).ready(function(){
      	    console.log("유지보수점검");
			
			// 페이지 로드 시, 제일 먼저 언제의 점검 목록인지 h1 태그에 표시	    
    	    var receiveDate = $('#INSPECTION_DATE').val(); // 값 형태 : YYYY-MM
    	    
    	    var sliceYear = receiveDate.substr(0,4); // 년도만 떼기
    	    var sliceMonth = receiveDate.substr(5,2); // 월만 떼기
    	    
    	    var formattYear = parseInt(sliceYear,10); // 문자열 => 10진수 정수로 변환
    	    var formattMonth = parseInt(sliceMonth,10); // 문자열 => 10진수 정수로 변환
    	    
    	    $('#month_title').text(formattYear + "년 " + formattMonth + "월 유지보수 점검 목록"); 
    	    
    	    
    	    // 목록 번호 자동으로 가져오기
    	    function inputNo(startValue){
    	    	$('#mainTable tbody tr').each(function(index){
    	    		
    	    		var value = startValue + index;
    	    		$(this).find('td').first().find('div.td_div p').text(value);
    	    	});
    	    }
    	    
    	    inputNo(1); //함수 호출

    	    $('.insertButton').on('click', function(){ // 등록으로 이동
    	    	var bno = $('#BNO').val();
    	    	
    	    	location.href = '/year_viewI.do?BNO=' + bno + '&DATE=' + receiveDate;
    	    });
    	    
    	    $('.logo_img').on('click', function(){
         		location.href='/home.do';
         	});
            
            $('.logo_div').on('click', function(){
         		location.href='/home.do';
         	});
    	});
    </script>
</body>
</html>
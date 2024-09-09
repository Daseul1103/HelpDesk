<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/maintenance/maintenance.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/2.1.2/css/jquery.dataTables.min.css"> <!-- dataTable CSS -->
    <title>하이브 시스템 유지보수</title>

    <!-- JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script> <!-- 기본 js -->
    <script src="//cdn.datatables.net/2.1.2/js/dataTables.min.js"></script> <!-- dataTable JS -->
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
                <div class="now-mini_menu">유지보수 관리</div> <!-- 현재 위치의 메뉴 -->  <!-- 1. 변경 메뉴에 맞게 내용 변경하기 -->
                <div class="now-mini_menu_2">유지보수 캘린더</div>
            </div>
        </div> <!-- 상단 메뉴바 wrap -->
        <div class="content-wrap"> 
            <div class="contentTitle_container">
                <div class="contentTitle-wrap">
                    <h1>유지보수 목록</h1> <!-- 2. 변경 메뉴에 맞게 내용 변경 하기 -->
                </div>
                <div class="search-wrap">
                    <form name="searchForm" method="post">
                        <div class="search_container"> 
                            <select name="searchOption" class="searchOption"> <!-- 검색 카테고리 셀렉트 박스 -->
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
                    </form>
                </div>
            </div>
            <div class="content_container">
                <div class="mainContent-wrap">
                    <table id="mainTable">
                        <thead>
                            <tr>
                                <th style="width: 100px;">
                                    <div class="th_div">No</div> <!-- 테이블 요소의 높이를 고정시키기 위해 div 태그 사용-->
                                </th>
                                <th style="width: 340px;">
                                    <div class="th_div">사업명</div>
                                </th>
                                <th style="width: 180px;">
                                    <div class="th_div">고객사</div>
                                </th>
                                <th style="width: 90px;">
                                    <div class="th_div">계약 유형</div>
                                </th>
                                <th style="width: 140px;">
                                    <div class="th_div">시작일</div>
                                </th>
                                <th style="width: 140px;">
                                    <div class="th_div">종료일</div>
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="row" items="${map.list}">
                            <tr>
                                <td>
                                    <div class="td_div">
                                        <a>
                                            
                                        </a>
                                        <input type="hidden" value="${row.BNO}">
                                    </div>
                                </td>
                                <td>
                                    <div class="td_div"><a>${row.PROJECT_NAME}</a></div>
                                </td>
                                <td>
                                    <div class="td_div"><a>${row.CUSTOMER_COMPANY}</a></div>
                                </td>
                                <td>
                                    <div class="td_div">
                                        <c:if test="${row.CONTRACT_TYPE eq 'Year'}">
                                            <a>연간 계약</a>
                                        </c:if>
                                        
                                        <c:if test="${row.CONTRACT_TYPE eq 'Call'}">
                                            <a>Call</a>
                                        </c:if>
                                    </div>
                                </td>
                                <td>
                                    <div class="td_div"><a>${row.START_DATE}</a></div>
                                </td>
                                <td>
                                    <div class="td_div"><a >${row.END_DATE}</a></div>
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

    <div id="modal" class="modal_background">
        <div class="top_container">
            <div class="left"></div>
            <h1 id="year"></h1>
            <div class="right"></div>
        </div>
        <div class="container">
            <div class="list-container">
                <ul class="month-list">
                    <li>1월</li>
                    <li>2월</li>
                    <li>3월</li>
                    <li>4월</li>
                    <li>5월</li>
                    <li>6월</li>
                    <li>7월</li>
                    <li>8월</li>
                    <li>9월</li>
                    <li>10월</li>
                    <li>11월</li>
                    <li>12월</li>
                </ul>
            </div>
        </div>
        <div class="bottom_container">
            <p id="current_to_set">이번 년도로 설정</p>
            <div class="vertical_line"></div>
            <p id="cancle_modal">창 닫기</p>
        </div>
    </div>

    <script>
        $(document).ready(function() {
                var today = new Date(); 
                var currentYear = today.getFullYear(); // 현재 날짜에서 년도만 추출
                var isModalOpen = false; // 모달 창의 상태를 추적하는 플래그 변수
                var currentBno = null; // 현재 선택된 BNO 값
				var clickMonth = "1월";
                
                var goYearList_f = '/go_viewList.do?DATE=';
                var goYearList_b = '&BNO=';
                
                closeModal();
                
                    var table = $('#mainTable').DataTable({
                        "ordering": false, // 정렬 기능 비활성화
                        "language" : {
                            "emptyTable" : "데이터가 없습니다.",
                            "info" : "_TOTAL_개 중 _START_부터 _END_까지 표시"
                        },
                        "searching" : false,
                        "lengthChange" : false
                    });
                    
                
                // 검색어를 입력하면 해당 키워드와 카테고리를 컨트롤러로 보냄 및 새로운 정보 화면에 표출
                $('#searchSubmit').on('click', function(){
                    document.searchForm.submit();
                });
                
             // 목록 번호 자동으로 업데이트하는 함수
                function updateNo() {
                    // 현재 페이지의 시작 인덱스와 페이지 당 항목 수를 가져옵니다.
                    var pageInfo = table.page.info();
                    var start = pageInfo.start + 1; // DataTables에서 start는 0-based index
                   
                    // 각 행의 'No' 열을 업데이트합니다.
                    $('#mainTable tbody tr').each(function(index) {
                        var value = start + index; // 페이지 시작 번호 + 현재 행의 인덱스
                        $(this).find('td').first().find('div.td_div a').text(value);
                    });
                }

                // DataTables의 draw 이벤트를 사용하여 페이지가 그려질 때마다 번호를 업데이트합니다.
                table.on('draw', function() {
                    updateNo();
                });

                // 초기 번호 업데이트
                updateNo();
                
				
                // 모달창 오픈 (날짜 선택 모달창)
                function openModal(bno) {
                    $('#modal').show();
                    isModalOpen = true; // 모달 창이 열렸음을 나타냄
                    currentBno = bno; // 선택된 BNO 저장
                    console.log("선택된 bno: " + bno);
                } 

                // 모달창 클로즈 (날짜 선택 모달창)
                function closeModal() {
                    $('#modal').hide();
                    isModalOpen = false; // 모달 창이 닫혔음을 나타냄
                    currentBno = null; // BNO 초기화
                }
                
                // 행을 선택했을 
                $('#mainTable').on('click', 'td', function() {
                    // 클릭한 td의 행 찾기
                    var $row = $(this).closest('tr');
                    
                    // 해당 행에서 계약 유형 열의 값 찾기
                    var contractType = $row.find('td:nth-child(4) a').text().trim();

                    // 해당 행에서 BNO 값 찾기
                    var bno = $row.find('td:nth-child(1) input[type="hidden"]').val().trim();
                    console.log("선택된 행 :" + bno);
                    
                    // 연간 계약이 아닌 다른 계약 유형일 때 => 바로 상세 페이지로 이동
                    var goCallView = "/go_viewList_C.do?BNO=" + bno;
                    
                    
                    // 계약 유형이 연간 계약이고, 모달창이 오픈되어 있지 않았을 때
                    if (contractType === '연간 계약' && !isModalOpen) {
                        openModal(bno); // 모달창 오픈(날짜 선택 모달창)
                        
                    } else if (contractType === '연간 계약' && isModalOpen) {  // 계약 유형이 연간 계약이고, 모달창이 오픈되어 있을 때
                        closeModal(); // 모달창 클로즈(날짜 선택 모달창)
                    } else { // 계약 유형이 연간 계약이 아닐 때 => 상세 페이지로 바로 이동
                        location.href = goCallView; // 상세 페이지로 바로 이동
                    }
                });

                $('#year').text(currentYear); // 모달창(날짜 선택 모달창)을 열었을 때, 현재 년도로 초기화

                $(".left").on('click', function(){ // 모달창(날짜 선택 모달창)에서 왼쪽 화살표 클릭 시
                    $('#year').text(currentYear-1); // (현재 년도 - 1) 값으로 년도 초기화
                    currentYear = currentYear-1; // 변수 초기화 => 데이터 저장 시 필요
                });

                $(".right").on('click', function(){ // 모달창(날짜 선택 모달창)에서 오른쪽 화살표 클릭 시
                    $('#year').text(currentYear+1); // (현재 년도 + 1) 값으로 년도 초기화
                    currentYear = currentYear+1; // 변수 초기화 => 데이터 저장 시 필요
                });
				
                // 모달창(날짜 선택 모달창)에서 현재 년도로 설정 버튼을 누르면 실행
                $('#current_to_set').on('click', function() {
                    $('#year').text(today.getFullYear()); //현재 년도로 텍스트 설정
                    currentYear = today.getFullYear(); // 현재 년도로 변수 초기화
                });
				
                // 모달창(날짜 선택 모달창)에서 창 닫기를 누르면 실행
                $('#cancle_modal').on('click', function(){
                    closeModal(); // 모달창 닫기
                });
				
                // 모달창에서 월까지 클릭했을 경우 : 날짜를 조합하여 데이터 전송
                function dateMix(bno, monthNumber) { // bno를 통해 maintenance_id 조회하기 위해 필요
                    var sendDate = currentYear + "-" + monthNumber; // 날짜 조합 (YYYY-MM) 형식으로 => LIKE문 사용하여 조회할 예정
                    
                    console.log("*************************"); // 구분선
                    console.log("선택한 bno :" + bno);
                    console.log("선택한 월 :" + monthNumber);
                    console.log("선택한 년도 :" + currentYear);
                    console.log("선택한 년월 :" + sendDate);
                    
                    closeModal(); // 월을 선택하면 그 다음 모달 창을 띄우기 위해 이전 모달창은 닫아준다
                    
                    location.href= goYearList_f + sendDate + goYearList_b + bno; // 선택한 월의 점검 리스트로 이동
                }
                
                // 모달 내 월 클릭 시 처리
                $('.month-list').on('click', 'li', function() {
                    if (isModalOpen && currentBno) {
                    	clickMonth = $(this).text();
                        var monthText = $(this).text().replace('월', ''); 
                        var monthNumber = monthText.padStart(2, '0'); // 두 자리로 포맷
                        
                        dateMix(currentBno, monthNumber);
                    }
                });
            });
            
            $('#insertButton').on('click', function(){
                location.href='/go_insert_maintenance.do'; // 6. 등록으로 이동하는 url 붙여넣기
            });
            
            $('.now-mini_menu_2').on('click', function(){
            	location.href='/calendar.do';
            });
            
            $('.logo_img').on('click', function(){
         		location.href='/home.do';
         	});
            
            $('.logo_div').on('click', function(){
         		location.href='/home.do';
         	});
        
    </script>
</body>
</html>
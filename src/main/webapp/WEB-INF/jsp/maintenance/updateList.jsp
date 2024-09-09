<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/maintenance/listCss.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <!-- jQuery UI CSS 파일 import : DatePicker 사용을 위함 -->
        <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <!-- jQuery UI 라이브러리 파일 import : DatePicker 사용을 위함 -->
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>

    <title>유지보수 관리</title>
</head>
    <body>
        <div class="topMenu_comtatiner"> <!-- 상단 메뉴바 컨테이너 시작 -->
            <div class="topMenu_top"> <!-- 상단 메뉴바에서 상단 메뉴 (홈페이지 로고 및 대메뉴 , 로그인/로그아웃)-->
                <div class="homepageLogo"> <!-- 홈페이지 로고 div -->
                    <div class="logo_div"></div>
                </div>
                <div class="bigMenu"> <!-- 대메뉴 div -->
                    <p><a href="/home.do">장비 관리</a></p>
                    <p><a href="/customer.do">고객사 관리</a></p>
                    <p><a href="/project.do">프로젝트 관리</a></p>
                    <p><a href="/maintenance.do">유지보수 관리</a></p>
                    <p><a href="/helpDeskEmp.do">Help Desk</a></p>
                </div>
                <div class="userLogin"> <!-- 로그인/로그아웃 -->
                    <div class="userImg"> <!-- 유저 이미지 div -->
    
                    </div>
                    <p><span style="color: #3366CC;">${sessionScope.MEMBER_NAME}</span> 님 &nbsp 환영합니다. </p> <!-- 로그인 정보 -->
                    <div class="user_funtion_horizontal"></div> <!-- 구분선 세로 div -->
                    <p class="logout"><a href="/userLogout.do">로그아웃</a></p> <!-- 로그아웃 버튼 -->
                </div>
            </div> 
             <div class="topMenu_bottom"> <!-- 상단 메뉴바에서 하단 메뉴 (소메뉴)-->
                <div class="miniMenu">
                    <p class="miniMenu_title"><a href="/maintenance.do">유지보수 </a></p>
                </div>
                <div class="miniMenu_o">
                    <p class="miniMenu_title"><a href="/calendar.do">유지보수 캘린더</a></p>
                </div>
            </div>
        </div> <!-- 상단 메뉴바 컨테이너 끝 -->
        <div class="mainContent_container">
            <div class="topContent"> <!-- 메인 컨텐츠 에서 상단 부분-->
                <div class="topTitle"> <!-- 메인 컨텐츠 대제목 -->
                    <h1 id="change_title"></h1>
                </div>
            </div>
            <div class="contentArea">
            <form id="updateForm" name="updateForm" action="/update_maintenance.do" method="post">
                    <table class="contentTable">
                        <tr>
                            <th style="width: 184px;">
                                <div>
                                	 <input type="hidden" name="BNO" value="${dto.BNO}">
                                    <p> 프로젝트 명</p>
                                </div>
                            </th>
                            <td colspan="3">
                                <div>
                                    <p>${dto.PROJECT_NAME}</p>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th style="width: 184px;">
                                <div>
                                    <p>계약 유형</p>
                                </div>
                            </th>
                            <td>
                                <div>
                                    <p>
                                        <c:if test="${dto.CONTRACT_TYPE eq 'Year'}">
                                           		 연간 계약
                                        </c:if>
                                        <c:if test="${dto.CONTRACT_TYPE eq 'Call'}">
                                            		콜
                                        </c:if>
                                    </p>
                                </div>
                            </td>
                            <th style="width: 184px;">
                                <div>
                                    <p>고객사</p>
                                </div>
                            </th>
                            <td>
                                <div>
                                    <p>${dto.CUSTOMER_COMPANY}</p>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <div>
                                    <p> 시작일</p>
                                </div>
                            </th>
                            <td>
                                <div>
                                    <input type="text" name="START_DATE" id="START_DATE" value="${dto.START_DATE}" class="inputStyle" style="margin-right: 10px;" readonly>
                                </div>
                            </td>
                            <th>
                                <div>
                                    <p> 종료일</p>
                                </div>
                            </th>
                            <td>
                                <div>
                                    <input type="text" name="END_DATE" id="END_DATE" value="${dto.END_DATE}" class="inputStyle" style="margin-right: 10px;" readonly>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <div>
                                    <p>담당자</p>
                                </div>
                            </th>
                            <td>
                                <div>
                                    <p>${dto.CUSTOMER_MANAGER}</p>
                                </div>
                            </td>
                            <th>
                                <div>
                                    <p>연락처</p>
                                </div>
                            </th>
                            <td>
                                <div>
                                    <p>${dto.CUSTOMER_MAN_TEL}</p>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <div>
                                    <p>점검자</p>
                                </div>
                            </th>
                            <td>
                                <div>
                                    <input type="text" id="INSPECTOR" name="INSPECTOR" value="${dto.INSPECTOR}" maxlength="10">
                                </div>
                            </td>
                            <th>
                                <div>
                                    <p>점검자 소속</p>
                                </div>
                            </th>
                            <td>
                                <div>
                                    <input type="text" id="INSPECTOR_COMPANY" name="INSPECTOR_COMPANY" value="${dto.INSPECTOR_COMPANY}" maxlength="20">
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <div>
                                    <p>확인자</p>
                                </div>
                            </th>
                            <td>
                                <div>
                                    <input type="text" id="CHECKER" name="CHECKER" value="${dto.CHECKER}" maxlength="10">
                                </div>
                            </td>
                            <th>
                                <div>
                                    <p>확인자 소속</p>
                                </div>
                            </th>
                            <td>
                                <div>
                                    <input type="text" id="CHECKER_COMPANY" name="CHECKER_COMPANY" value="${dto.CHECKER_COMPANY}" maxlength="20">
                                </div>
                            </td>
                        </tr>
                        
                    </table>
                    </form>
            </div>
            
            <form id="updateForm2" name="updateForm2" action="/service_update.do" method="post">
            <input type="hidden" id="INSPECTION_ID" name="INSPECTION_ID" value="${INSPECTION_ID}">
            <div class="service_modal">
				
            </div>
			</form>
            <input type="hidden" id="BNO" value="${dto.BNO}">
            <input type="hidden" id="LIST_TYPE" value="${listType}">
			<input type="hidden" id="CONTRACT_TYPE" value="${contractType}">
            <div class="buttonArea">
                <div id="beforeButton" class="beforeButton">이전</div>
                <div id="nextButton" class="insertButton">다음</div>
                <div id="cancleButton" class="cancleButton">취소</div>
            </div>
        </div>

        <script>
            $(document).ready(function(){
                loadPage();
                
                $('.logo_img').on('click', function(){
             		location.href='/home.do';
             	});
                
                $('.logo_div').on('click', function(){
                	console.log("클릭");
             		location.href='/home.do';
             	});
                
             // 시작일
                $('#START_DATE').datepicker({
                    dateFormat: 'yy-mm-dd', // 날짜 포맷 설정 (년-월-일)
                    dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'], // 요일 이름 축약형 설정
                    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'], // 월 이름 설정
                    monthNamesShort: ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12'], // 월 이름 축약형 설정
                    showMonthAfterYear: true, // 년도 뒤에 월 표시
                    yearSuffix: '년', // 년도 뒤에 붙는 텍스트
                    changeYear: true, // 연도 선택 가능
                    changeMonth: true, // 월 선택 가능
                    showButtonPanel: true, // 버튼 패널 표시
                    currentText: '오늘', // 오늘 날짜로 이동하는 버튼 텍스트
                    closeText: '닫기', // 닫기 버튼 텍스트
                    prevText: '이전 달', // 이전 달로 이동하는 버튼 텍스트
                    nextText: '다음 달', // 다음 달로 이동하는 버튼 텍스트
                    showOn: "both", // 버튼과 필드 양쪽에 표시
                    buttonImage: "/images/calender.svg", // 달력 아이콘 이미지 경로
                    buttonImageOnly: true, // 아이콘만 표시할지 여부
                    onSelect: function(dateText, inst) {
                        // 선택된 날짜를 포맷하여 input 필드에 채움
                        $('#product_date').val(formatDate(dateText));
                    }
                });

                // 종료일
                $('#END_DATE').datepicker({
                    dateFormat: 'yy-mm-dd', // 날짜 포맷 설정 (년-월-일)
                    dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'], // 요일 이름 축약형 설정
                    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'], // 월 이름 설정
                    monthNamesShort: ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12'], // 월 이름 축약형 설정
                    showMonthAfterYear: true, // 년도 뒤에 월 표시
                    yearSuffix: '년', // 년도 뒤에 붙는 텍스트
                    changeYear: true, // 연도 선택 가능
                    changeMonth: true, // 월 선택 가능
                    showButtonPanel: true, // 버튼 패널 표시
                    currentText: '오늘', // 오늘 날짜로 이동하는 버튼 텍스트
                    closeText: '닫기', // 닫기 버튼 텍스트
                    prevText: '이전 달', // 이전 달로 이동하는 버튼 텍스트
                    nextText: '다음 달', // 다음 달로 이동하는 버튼 텍스트
                    showOn: "both", // 버튼과 필드 양쪽에 표시
                    buttonImage: "/images/calender.svg", // 달력 아이콘 이미지 경로
                    buttonImageOnly: true, // 아이콘만 표시할지 여부
                    onSelect: function(dateText, inst) {
                        // 선택된 날짜를 포맷하여 input 필드에 채움
                        $('#product_date').val(formatDate(dateText));
                    }
                });
                
            });
			
            function formatDate(date) {
                // 날짜 객체 생성
                var d = new Date(date);
    
                // 날짜 포맷 설정 (yyyy-mm-dd)
                var year = d.getFullYear();
                var month = ('0' + (d.getMonth() + 1)).slice(-2); // 월은 0부터 시작하므로 +1 필요, slice(-2)는 두 자리 수로 맞추기
                var day = ('0' + d.getDate()).slice(-2); // 일도 두 자리 수로 맞추기
    
                // 포맷된 날짜 반환
                var formattedDate = year + '-' + month + '-' + day;
                return formattedDate;
            }
            
            function loadPage(){ // 페이지 로드 후 제일 먼저 실행 되는 함수
                $('#change_title').text("유지보수 상세 정보");
                $('#beforeButton').hide();
                $('.service_modal').hide();
            };

            function removeLoad(){
                $('.service_modal').hide();
                $('.contentArea').show();
                $('#nextButton').text("다음");
            }

            function getBackStyle(){
                $('#beforeButton').hide();
                $('#change_title').text("유지보수 상세 정보");
            }

            function changeService(){ //서비스 => 점검 내역서로 로드할 때
                $('.service_modal').empty(); //비우기
                $('.service_modal').load('/yearResult.do'); // 점검 내역서 로드
                $('.service_modal').show();
            }

            function changeResult(){ // 점검 내역서 => 서비스로 로드할 때
                $('.service_modal').empty(); //비우기
                $('.service_modal').load('/yearService.do'); // 점검 내역서 로드
                $('.service_modal').show();
            }

            $('#nextButton').on('click',function(){
                var textChecker = $('#nextButton').text();

                $('.contentArea').hide();
                $('#change_title').empty(); // 원래 요소들(상세 정보) 비우기

                $('#change_title').text("점검 리스트 수정");
                $('#beforeButton').show();

                if(textChecker == "저장") {
                    var nowType = $('#LIST_TYPE').val();

                    if(nowType =="service"){
                    	$('#updateForm2').attr('action', '/service_update.do');
                        document.updateForm.submit(); // 첫 번째 폼 제출
                        setTimeout(function() {
                            document.updateForm2.submit(); // 일정 시간 후 두 번째 폼 제출
                        }, 1000);
                    } else {
                    	$('#updateForm2').attr('action', '/result_update.do');
                        document.updateForm.submit(); // 첫 번째 폼 제출
                        setTimeout(function() {
                            document.updateForm2.submit(); // 일정 시간 후 두 번째 폼 제출
                        }, 1000);
                    }

                    alert("등록 완료");
                } else {
                	$('#nextButton').text("저장");
                	var ino = $('#INSPECTION_ID').val();
                    var listType = $('#LIST_TYPE').val();
                    
                    var loadService = '/serviceUpdateLoad.do?INO=' + ino;
                    var loadResult = '/resultUpdateLoad.do?INO=' + ino;
                    
                    if(listType == "service") {
                    	$('.service_modal').load(loadService);
                        $('.service_modal').show();	
                    } else {
                    	$('.service_modal').load(loadResult);
                        $('.service_modal').show();
                    }
                }
            });

            $('#beforeButton').on('click',function(){
                    removeLoad(); // 로드 제거
                    getBackStyle();
            });

            $('#cancleButton').on('click', function(){
                var goList = confirm("점검 목록으로 이동합니까?");

                if(goList) {
                	history.back();
                } else {
                    return false;
                }
            });
            
            function openDate(){
                var date = $('#DATE').val();
                var slice_year = date.substr(0,4);
                var slice_month = date.substr(5,2);
                var fixedYear = parseInt(slice_year,10);
                var fixedMonth = parseInt(slice_month,10);

                $('#inspection_date').datepicker({
                    dateFormat: 'yy-mm-dd', // 날짜 포맷 설정 (년-월-일)
                    dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'], // 요일 이름 축약형 설정
                    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'], // 월 이름 설정
                    monthNamesShort: ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12'], // 월 이름 축약형 설정
                    showMonthAfterYear: true, // 년도 뒤에 월 표시
                    yearSuffix: '년', // 년도 뒤에 붙는 텍스트
                    changeYear: false,
                    changeMonth: false,
                    showButtonPanel: true, // 버튼 패널 표시
                    currentText: '오늘', // 오늘 날짜로 이동하는 버튼 텍스트
                    closeText: '닫기', // 닫기 버튼 텍스트
                    prevText: '이전 달', // 이전 달로 이동하는 버튼 텍스트
                    nextText: '다음 달', // 다음 달로 이동하는 버튼 텍스트
                    showOn: "both", // 버튼과 필드 양쪽에 표시
                    buttonImage: "/images/calender.svg", // 달력 아이콘 이미지 경로
                    buttonImageOnly: true, // 아이콘만 표시할지 여부
                    defaultDate: new Date(fixedYear, fixedMonth - 1, 1), // 기본 날짜 설정
                    minDate: new Date(fixedYear, fixedMonth - 1, 1), // 최소 날짜 설정
                    maxDate: new Date(fixedYear, fixedMonth, 0), // 최대 날짜 설정
                    onSelect: function(dateText, inst) {
                        // 선택된 날짜를 포맷하여 input 필드에 채움
                        $('#inspection_date').val(formatDate(dateText));
                    }
                });
      
            }
            
            $('#INSPECTOR').on('input', function(){
            	var INSPECTOR= $(this).val();
            	INSPECTOR = INSPECTOR.replace(/[^ㄱ-ㅎ가-힣a-zA-Z]/g, '');
            	 $(this).val(INSPECTOR);
            });
            
            $('#CHECKER').on('input', function(){
            	var CHECKER = $(this).val();
            	CHECKER = CHECKER.replace(/[^ㄱ-ㅎ가-힣a-zA-Z]/g, '');
            	 $(this).val(CHECKER);
            });
            
            $('#INSPECTOR_COMPANY').on('input', function(){
            	var INSPECTOR_COMPANY = $(this).val();
            	INSPECTOR_COMPANY = INSPECTOR_COMPANY.replace(/[^\p{L}\p{N}\s]/gu, '');
            	 $(this).val(INSPECTOR_COMPANY);
            });
            
            $('#CHECKER_COMPANY').on('input', function(){
            	var CHECKER_COMPANY = $(this).val();
            	CHECKER_COMPANY = CHECKER_COMPANY.replace(/[^\p{L}\p{N}\s]/gu, '');
            	 $(this).val(CHECKER_COMPANY);
            });
        </script>
    </body>
</html>
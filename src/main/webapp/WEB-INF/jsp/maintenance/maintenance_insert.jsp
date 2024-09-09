<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/maintenance/maintenance_insert.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <!-- jQuery UI CSS 파일 import : DatePicker 사용을 위함 -->
        <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <!-- jQuery UI 라이브러리 파일 import : DatePicker 사용을 위함 -->
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
        <!-- jQuery 한글 언어 파일 import : DatePicker 사용을 위함 -->
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
                    <p class="miniMenu_title"><a href="/maintenance.do">유지보수</a></p>
                </div>
                <div class="miniMenu_o">
                    <p class="miniMenu_title"><a href="/calendar.do">유지보수 캘린더</a></p>
                </div>
            </div> 
        </div> <!-- 상단 메뉴바 컨테이너 끝 -->
        <div class="mainContent_container">
            <div class="topContent"> <!-- 메인 컨텐츠 에서 상단 부분-->
                <div class="topTitle"> <!-- 메인 컨텐츠 대제목 -->
                    <h1>유지보수 등록</h1>
                    <p>아래 입력란은 모두 필수 입력 사항입니다.</p>
                </div>
            </div>
            <div class="contentArea">
                <form name="insertForm" method="post" action="/insert_maintenance.do">
                    <table class="contentTable">
                        <tr>
                            <th style="width: 184px;">
                                <div>
                                    <p> 프로젝트 명</p>
                                </div>
                            </th>
                            <td colspan="3">
                                <div>
                                    <input type="text" name="PROJECT_NAME" id="PROJECT_NAME" style=" width:721px; margin-left: 20px; height: 24px;" placeholder="클릭하여 프로젝트 찾기.." readonly>
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
                                    <select name="CONTRACT_TYPE" id="CONTRACT_TYPE" class="selectStyle">
                                    	<option value="Year">연간 계약</option>
                                    	<option value="Call">Call</option>
                                    </select>
                                </div>
                            </td>
                            <th style="width: 184px;">
                                <div>
                                    <p>고객사</p>
                                </div>
                            </th>
                            <td>
                                <div>
                                    <input type="text" name="CUSTOMER_COMPANY" id="CUSTOMER_COMPANY" class="inputStyle" readonly>
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
                                    <input type="text" name="START_DATE" id="START_DATE" class="inputStyle" style="margin-right: 10px;" readonly>
                                </div>
                            </td>
                            <th>
                                <div>
                                    <p> 종료일</p>
                                </div>
                            </th>
                            <td>
                                <div>
                                    <input type="text" name="END_DATE" id="END_DATE" class="inputStyle" style="margin-right: 10px;"readonly>
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
                                    <input type="text" name="CUSTOMER_MANAGER" id="CUSTOMER_MANAGER" class="inputStyle" readonly>
                                </div>
                            </td>
                            <th>
                                <div>
                                    <p>연락처</p>
                                </div>
                            </th>
                            <td>
                                <div>
                                    <input type="text" name="CUSTOMER_MAN_TEL" id="CUSTOMER_MAN_TEL" class="inputStyle" readonly>
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
                                    <input type="text" name="INSPECTOR" id="INSPECTOR" class="inputStyle" maxlength="10" oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);" >
                                </div>
                            </td>
                            <th>
                                <div>
                                    <p>점검자 소속</p>
                                </div>
                            </th>
                            <td>
                                <div>
                                    <input type="text" name="INSPECTOR_COMPANY" id="INSPECTOR_COMPANY" class="inputStyle" maxlength="15" oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);" >
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
                                    <input type="text" name="CHECKER" id="CHECKER" class="inputStyle" maxlength="10" oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);" >
                                </div>
                            </td>
                            <th>
                                <div>
                                    <p>확인자 소속</p>
                                </div>
                            </th>
                            <td>
                                <div>
                                    <input type="text" name="CHECKER_COMPANY" id="CHECKER_COMPANY" class="inputStyle" maxlength="15" oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);" >
                                </div>
                            </td>
                        </tr>
                    </table>
                    <input type="hidden" name="MEMBER_ID" value="${sessionScope.MEMBER_ID}">
                </form>
            </div>
            <div class="buttonArea">
                <div id="insertButton" class="insertButton">등록</div>
                <div id="cancleButton" class="cancleButton">취소</div>
            </div>
        </div>
    
        <script>
    
            $('#searchSubmit').on('click', function(){
                document.searchForm.submit();
            });
    
            $(document).ready(function() {
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
    
            /* 팝업창 */
            $('#PROJECT_NAME').on('click', function() {
            	$('#CUSTOMER_COMPANY').prop('disabled', false);
                $('#CUSTOMER_MANAGER').prop('disabled', false);
                $('#CUSTOMER_MAN_TEL').prop('disabled', false);
            	
                console.log("팝업창");
                var popupWindow = window.open('/find_project.do', '프로젝트 찾기', 'width=1100,height=850,resizable=no,scrollbars=no');
            })
    
            function setChildValue(project,company,manager,tel) {
                $('#PROJECT_NAME').val(project);
                $('#CUSTOMER_COMPANY').val(company);
                $('#CUSTOMER_MANAGER').val(manager);
    			$('#CUSTOMER_MAN_TEL').val(tel);
    			
                console.log('프로젝트 명:', project);
                console.log('고객사:', company);
                console.log('담당자:', manager);
                
                $('#CUSTOMER_COMPANY').css({
                    'background-color': '#f0f0f0',
                    'border': '1px solid #ccc',
                    'color': '#888',
                    'cursor': 'not-allowed',
                    'pointer-events': 'none'
                });
				
                $('#CUSTOMER_MANAGER').css({
                    'background-color': '#f0f0f0',
                    'border': '1px solid #ccc',
                    'color': '#888',
                    'cursor': 'not-allowed',
                    'pointer-events': 'none'
                });

                $('#CUSTOMER_MAN_TEL').css({
                    'background-color': '#f0f0f0',
                    'border': '1px solid #ccc',
                    'color': '#888',
                    'cursor': 'not-allowed',
                    'pointer-events': 'none'
                });

            }
            
            function compareDates(startDate, endDate) {
                var start = new Date(startDate);
                var end = new Date(endDate);
                return start <= end;
            }
            
            // 취소 버튼 클릭 시 이전 화면으로 이동 (목록)
            $('#cancleButton').on('click', function(){
                location.href='/maintenance.do';
            });
    
            // 등록 버튼 클릭 시 유효성 검사 후 등록 or 반환
            $('#insertButton').on('click',function(){
                var projectName = $('#PROJECT_NAME').val();
                var projectCompany = $('#PROJECT_COMPANY').val();
                var startDate = $('#START_DATE').val();
                var endDate = $('#END_DATE').val();
                var insepctor = $('#INSPECTOR').val();
                var inspector_company = $('#INSPECTOR_COMPANY').val();
                var checker = $('#CHECKER').val();
                var checker_company = $('#CHECKER_COMPANY').val();
                
                if (projectName === "") {
                    alert('프로젝트 명을 선택해주세요.');
                    $('#PROJECT_NAME').focus();
                } else if (startDate === "") {
                    alert('시작일을 선택하지 않았습니다.');
                    $('#START_DATE').focus();
                } else if (endDate === "") {
                    alert('종료일을 선택하지 않았습니다.');
                    $('#END_DATE').focus();
                } else if (insepctor == "") {
                    alert('점검자를 입력하지 않았습니다.');
                } else if (inspector_company == "") {
                    alert('점검자 소속을 입력하지 않았습니다.');
                } else if (checker == "") {
                    alert('확인자를 입력하지 않았습니다.');
                } else if (checker_company == "") {
                    alert('확인자 소속을 입력하지 않았습니다.');
                } else {
                    document.insertForm.submit();
                }
            });
            
            $('.logo_img').on('click', function(){
         		location.href='/home.do';
         	});
            
            $('.logo_div').on('click', function(){
         		location.href='/home.do';
         	});
            
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
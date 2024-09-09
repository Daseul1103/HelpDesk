<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/project/project_insert.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <!-- jQuery UI CSS 파일 import : DatePicker 사용을 위함 -->
        <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <!-- jQuery UI 라이브러리 파일 import : DatePicker 사용을 위함 -->
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
        <!-- jQuery 한글 언어 파일 import : DatePicker 사용을 위함 -->
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
    <title>프로젝트 관리</title>
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
                <p class="miniMenu_title">프로젝트 등록</p>
            </div>
        </div> 
    </div> <!-- 상단 메뉴바 컨테이너 끝 -->
    <div class="mainContent_container">
        <div class="topContent"> <!-- 메인 컨텐츠 에서 상단 부분-->
            <div class="topTitle"> <!-- 메인 컨텐츠 대제목 -->
                <h1>프로젝트 등록</h1>
                <p><span style="color:red;">*</span> 표시는 필수 입력 사항입니다.</p>
            </div>
        </div>
        <div class="contentArea">
            <form name="insertForm" method="post" action="/insert_project.do">
                <table class="contentTable">
                    <tr>
                        <th style="width: 184px;">
                            <div>
                                <p><span style="color:red;">*</span> 프로젝트 명</p>
                            </div>
                        </th>
                        <td colspan="3">
                            <div>
                                <input type="text" name="PROJECT_NAME" id="PROJECT_NAME" style=" width:721px; margin-left: 20px; height: 24px;" maxlength="30">
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th style="width: 184px;">
                            <div>
                                <p>프로젝트 별칭</p>
                            </div>
                        </th>
                        <td>
                            <div>
                                <input type="text" name="PROJECT_AS" id="PROJECT_AS" class="inputStyle" maxlength="25">
                            </div>
                        </td>
                        <th style="width: 184px;">
                            <div>
                                <p><span style="color:red;">*</span> 고객사</p>
                            </div>
                        </th>
                        <td>
                            <div>
                                <input type="text" name="PROJECT_COMPANY" id="PROJECT_COMPANY" class="inputStyle" placeholder="클릭하여 고객사 찾기.." readonly>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <div>
                                <p><span style="color:red;">*</span> 시작일</p>
                            </div>
                        </th>
                        <td>
                            <div>
                                <input type="text" name="START_DATE" id="START_DATE" class="inputStyle" style="margin-right: 10px;" readonly>
                            </div>
                        </td>
                        <th>
                            <div>
                                <p><span style="color:red;">*</span> 종료일</p>
                            </div>
                        </th>
                        <td>
                            <div>
                                <input type="text" name="END_DATE" id="END_DATE" class="inputStyle" style="margin-right: 10px;" readonly>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <div>
                                <p> 담당자</p>
                            </div>
                        </th>
                        <td>
                            <div>
                                <input type="text" name="CUSTOMER_MANAGER" id="CUSTOMER_MANAGER" class="inputStyle" readonly>
                            </div>
                        </td>
                        <th>
                            <div>
                                <p> 연락처</p>
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
                                <p>수주 금액</p>
                            </div>
                        </th>
                        <td colspan="3">
                            <div>
                                <input type="text" name="PROJECT_AMOUNT" id="PROJECT_AMOUNT" placeholder="금액만 입력" style=" width:720px; margin-left: 20px; height: 24px;">
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <div>
                                <p>사업 내용</p>
                            </div>
                        </th>
                        <td colspan="3">
                            <div>
                                <textarea id="PROJECT_DETAILS" class="textStyle" wrap="hard" maxlength="500"></textarea>
                                <input type="hidden" name="PROJECT_DETAILS" id="sentText">
                                
                            </div>
                        </td>
                    </tr>
                </table>
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

        var input = $('#PROJECT_DETAILS');
        var output = $('#sentText');
        
        
        /* textarea 개행 문자 처리 */
        function brChange() {
            inputVal = input.val();
            output.val(inputVal.replace(/(?:\r\n|\r|\n)/g,'<br>'));
        }

        /* 팝업창 */
        $('#PROJECT_COMPANY').on('click', function() {
            console.log("팝업창");
            var popupWindow = window.open('/find_customer.do', '고객사 찾기', 'width=1100,height=850,resizable=no,scrollbars=no');
        })

        function setChildValue(company,manager,number) {
            $('#PROJECT_COMPANY').val(company);
            $('#CUSTOMER_MANAGER').val(manager);
            $('#CUSTOMER_MAN_TEL').val(number);

            console.log('고객사:', company);
            console.log('담당자:', manager);
            console.log('연락처:', number);
        }
		
        function compareDates(startDate, endDate) {
            var start = new Date(startDate);
            var end = new Date(endDate);
            return start <= end;
        }
        
        // 취소 버튼 클릭 시 이전 화면으로 이동 (목록)
        $('#cancleButton').on('click', function(){
            location.href='/project.do';
        });

        // 등록 버튼 클릭 시 유효성 검사 후 등록 or 반환
        $('#insertButton').on('click',function(){
        	var projectName = $('#PROJECT_NAME').val();
            var projectCompany = $('#PROJECT_COMPANY').val();
            var startDate = $('#START_DATE').val();
            var endDate = $('#END_DATE').val();
			var amount = $('#PROJECT_AMOUNT').val();
			
            brChange();
            
            if (projectName === "") {
                alert('프로젝트 명을 입력해주세요.');
                $('#PROJECT_NAME').focus();
            } else if (projectCompany === "") {
                alert('고객사를 선택해주세요.');
                $('#PROJECT_COMPANY').focus();
            } else if (startDate === "") {
                alert('시작일을 선택하지 않았습니다.');
                $('#START_DATE').focus();
            } else if (endDate === "") {
                alert('종료일을 선택하지 않았습니다.');
                $('#END_DATE').focus();
            } else if (!compareDates(startDate, endDate)) {
                alert('시작일이 종료일보다 나중일 수 없습니다.');
            } else {
                document.insertForm.submit();
            }
        });
        
        var amountInput = $('#PROJECT_AMOUNT');  // 수주 금액 입력 필드

        // 숫자만 입력되도록 하는 함수
        function enforceNumericInput() {
            // 현재 값에서 숫자만 남기고 나머지 문자 제거
            var numericVal = $(this).val().replace(/[^0-9]/g, '');
            $(this).val(numericVal);  // 숫자만 남긴 상태에서 포맷 처리
            updateNumberFormat(); // 포맷 적용
        }

        // 숫자에 천 단위 구분 기호를 추가하는 함수
        function formatNumber(value) {
            if (value === '') return ''; // 빈 문자열 처리
            // 천 단위 구분 기호를 추가
            return value.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
        }

        // 입력값에 쉼표 추가
        function updateNumberFormat() {
            var amountVal = amountInput.val();  // 입력 필드의 현재 값 가져오기
            var numericVal = amountVal.replace(/,/g, ''); // 쉼표 제거
            var formattedVal = formatNumber(numericVal); // 천 단위 구분 기호 추가
            amountInput.val(formattedVal); // 형식화된 값으로 입력 필드 업데이트
        }

        // 숫자만 입력되도록 하는 이벤트 핸들러
        amountInput.on('input', enforceNumericInput);

        // 입력 필드에서 포커스가 벗어났을 때 포맷 적용
        amountInput.on('blur', updateNumberFormat);
        
        $('.logo_img').on('click', function(){
     		location.href='/home.do';
     	});
        
        $('.logo_div').on('click', function(){
     		location.href='/home.do';
     	});

    </script>
</body>
</html>
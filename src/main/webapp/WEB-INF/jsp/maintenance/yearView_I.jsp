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
                    <table class="contentTable">
                        <tr>
                            <th style="width: 184px;">
                                <div>
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
                                    <p>${dto.START_DATE}</p>
                                </div>
                            </td>
                            <th>
                                <div>
                                    <p> 종료일</p>
                                </div>
                            </th>
                            <td>
                                <div>
                                    <p>${dto.END_DATE}</p>
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
                                    <p>${dto.INSPECTOR}</p>
                                </div>
                            </td>
                            <th>
                                <div>
                                    <p>점검자 소속</p>
                                </div>
                            </th>
                            <td>
                                <div>
                                    <p>${dto.INSPECTOR_COMPANY}</p>
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
                                    <p>${dto.CHECKER}</p>
                                </div>
                            </td>
                            <th>
                                <div>
                                    <p>확인자 소속</p>
                                </div>
                            </th>
                            <td>
                                <div>
                                    <p>${dto.CHECKER_COMPANY}</p>
                                </div>
                            </td>
                        </tr>
                    </table>
            </div>
            <form id="insertForm" name="insertForm" action="/service_insert.do" method="post">
            <input type="hidden" name="MAINTENANCE_ID" id="BNO" value="${dto.BNO}">
            <div class="service_modal">
				
            </div>
			</form>
            <input type="hidden" id="DATE" value="${date}">
            <input type="hidden" id="company" value="${dto.CUSTOMER_COMPANY}">
            <input type="hidden" id="inspector" value="${dto.INSPECTOR}">
            <input type="hidden" id="inspectorCompany" value="${dto.INSPECTOR_COMPANY}">
            
            <div class="buttonArea">
                <div id="beforeButton" class="beforeButton">이전</div>
                <div id="nextButton" class="insertButton">다음</div>
                <div id="cancleButton" class="cancleButton">취소</div>
            </div>
        </div>

        <script>
            $(document).ready(function(){
            	
            	$('#beforeButton').css('margin-right','33%');
            	
            	var company = $('#company').val();
                loadPage();

                function adjustTextareas() {
                    $('#INSPECTION_RESULT, #ETC').each(function() {
                        $(this).css('height', 'auto');
                        $(this).css('height', this.scrollHeight + 'px');
                        console.log('Adjusted height for', this.id);
                    });
                }

                $(document).on('input', '#INSPECTION_RESULT, #ETC', function() {
                    $(this).css('height', 'auto');
                    $(this).css('height', this.scrollHeight + 'px');
                });
            });

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

                $('#change_title').text("점검 리스트 등록");
                $('#beforeButton').show();

                if(textChecker == "등록") {
                    var nowType = $('#LIST_TYPE').val();

                    if(nowType =="service"){
                    	var title = $('#LIST_TITLE').val();
                    	
                    	
                    	// 유효성 검사
                    	if(title =="") {
                    		alert("접수 내역을 입력해 주세요.");
                    	} else if () {
                    		alert("점검 상태를 선택하지 않았습니다.");
                    	} else {
                    		$('#insertForm').attr('action', '/service_insert.do');
                            document.insertForm.submit();
                    	}
                    } else {
                    	$('#insertForm').attr('action', '/result_insert.do');
                        document.insertForm.submit();
                    }

                    alert("등록 완료");
                } else {
                    $('#nextButton').text("등록");
                    $('.service_modal').load('/yearService.do');
                    $('.service_modal').show();
                }
            });

            $('#beforeButton').on('click',function(){
                var beforeChecker = confirm("입력한 내용이 모두 소실됩니다. 이전으로 이동하시겠습니까?");
                if(beforeChecker){
                    removeLoad(); // 로드 제거
                    getBackStyle();
                } else {
                    return false;
                }
            });

            $('#cancleButton').on('click', function(){
                var goList = confirm("점검 목록으로 이동합니까?");

                if(goList) {
                    var sendDate = $('#DATE').val();
                    var sendBno = $('#BNO').val();

                    location.href = '/go_viewList.do?BNO=' + sendBno + '&DATE=' + sendDate;
                } else {
                    return false;
                }
            });

            function LoadChange(){
                var changeType = $('#LIST_TYPE').val();

                if(changeType == "service") {
                    changeResult();
                } else {
                    changeService();
                }
            }
            
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
        </script>
    </body>
</html>
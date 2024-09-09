<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/calendar/calendarCustom.css">
    <script src="/js/index.global.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <!-- jQuery UI CSS 파일 import : DatePicker 사용을 위함 -->
        <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <!-- jQuery UI 라이브러리 파일 import : DatePicker 사용을 위함 -->
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
    <title>유지보수 캘린더</title>
</head>
<body>
    <div class="topMenu_comtatiner"> <!-- 상단 메뉴바 컨테이너 시작 -->
        <div class="topMenu_top"> <!-- 상단 메뉴바에서 상단 메뉴 (홈페이지 로고 및 대메뉴 , 로그인/로그아웃) -->
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
                <p>
                    <span style="color: #3366CC;">${sessionScope.MEMBER_NAME}</span> 님 &nbsp; 환영합니다.
                </p> <!-- 로그인 정보 -->
                <div class="user_funtion_horizontal"></div> <!-- 구분선 세로 div -->
                <p class="logout"><a href="/userLogout.do">로그아웃</a></p> <!-- 로그아웃 버튼 -->
            </div>
        </div>
        <div class="topMenu_bottom"> <!-- 상단 메뉴바에서 하단 메뉴 (소메뉴) -->
            <div class="miniMenu_o">
                <p class="miniMenu_title"><a href="/maintenance.do">유지보수 목록</a></p>
            </div>
            <div class="miniMenu">
                <p class="miniMenu_title"><a href="/calendar.do">유지보수 캘린더</a></p>
            </div>
        </div>
    </div>

    <!-- <div id="contents" style="position: absolute;">
        <div id="dialog" title="일정 관리" style="display: none;">
            <div id="form-dviv">
                <form name="diaForm" id="diaForm" class="diaForm">
                    <input type="hidden" name="ACTION_TYPE" value="C">
                    <input type="hidden" name="SCHEDULE_ID" value="">
                    <input type="hidden" name="START_DATE" value="">
                    <input type="hidden" name="END_DATE" value="">

                    <p class="name">
                        <input name="SCHECDULE_TITLE" type="text" class="validate[required,custom[onlyLetter],length[0,100]] feedback-input" placeholder="일정 제목 입력하기" id="name" />
                    </p>
                    <p class="time">
                        <input name="RANGE_DATE" type="text" readonly="readonly" class="validate[required,custom[email]] feedback-input" placeholder="선택된 날짜 및 시간" /> 
                    </p>
                    <p class="text">
                        <textarea name="SCHEDULE_DISCRIPTION" class="validate[required,length[6,300]] feedback-input" id="comment" placeholder="일정 내용"></textarea>
                    </p>  
                </form>
            </div>
            <div id="cancleButton"> 취소 </div>
        </div>
    </div> -->
	<div class="mainContent_container">
		<div id="calendar"> </div>
	</div>
	
	<div class="viewContents"></div>


	<div class="contents" style="display: none;">
		<form name="insertForm" id="insertForm" action="/insertDate.do" method="post">
			<div class="title-wrap">
				<h1>일정 등록</h1>
			</div>
			<div class="content-wrap">
				<div class="table-wrap">
					<table id="mainTable">
						<tr>
							<th style="width:180px;">
								<div class="th_div">제목</div>
							</th>
							<td>
								<div class="td_div">
									<input type="text" name="CALENDAR_TITLE" id="CALENDAR_TITLE" style="width:400px;" maxlength="25">
								</div>
							</td>
						</tr>
						<tr>
							<th>
								<div class="th_div">시작일</div>
							</th>
							<td>
								<div class="td_div">
									<input type="text" id="START_DATE_F" readonly style="margin-right: 10px;"> <!-- 년 월 일 ( 시작일은 지정 )-->
            								<select id="START_DATE_B" style="width: 155px; margin-right: 10px;">
                								<option value="T00:00:00">00:00</option>
                								<option value="T00:30:00">00:30</option>
								                <option value="T01:00:00">01:00</option>
                								<option value="T01:30:00">01:30</option>
                								<option value="T02:00:00">02:00</option>
                								<option value="T02:30:00">02:30</option>
                								<option value="T03:00:00">03:00</option>
                								<option value="T03:30:00">03:30</option>
                								<option value="T04:00:00">04:00</option>
                								<option value="T04:30:00">04:30</option>
                								<option value="T05:00:00">05:00</option>
                								<option value="T05:30:00">05:30</option>
                								<option value="T06:00:00">06:00</option>
                								<option value="T06:30:00">06:30</option>
                								<option value="T07:00:00">07:00</option>
                								<option value="T07:30:00">07:30</option>
                								<option value="T08:00:00">08:00</option>
                								<option value="T08:30:00">08:30</option>
                								<option value="T09:00:00">09:00</option>
               								 	<option value="T09:30:00">09:30</option>
                								<option value="T10:00:00">10:00</option>
                								<option value="T10:30:00">10:30</option>
                								<option value="T11:00:00">11:00</option>
                								<option value="T11:30:00">11:30</option>
                								<option value="T12:00:00">12:00</option>
                								<option value="T12:30:00">12:30</option>
                								<option value="T13:00:00">13:00</option>
                								<option value="T13:30:00">13:30</option>
                								<option value="T14:00:00">14:00</option>
                								<option value="T14:30:00">14:30</option>
                								<option value="T15:00:00">15:00</option>
                								<option value="T15:30:00">15:30</option>
                								<option value="T16:00:00">16:00</option>
                								<option value="T16:30:00">16:30</option>
                								<option value="T17:00:00">17:00</option>
                								<option value="T17:30:00">17:30</option>
                								<option value="T18:00:00">18:00</option>
               								 	<option value="T18:30:00">18:30</option>
                								<option value="T19:00:00">19:00</option>
                								<option value="T19:30:00">19:30</option>
                								<option value="T20:00:00">20:00</option>
                								<option value="T20:30:00">20:30</option>
                								<option value="T21:00:00">21:00</option>
                								<option value="T21:30:00">21:30</option>
                								<option value="T22:00:00">22:00</option>
                								<option value="T22:30:00">22:30</option>
                								<option value="T23:00:00">23:00</option>
                								<option value="T23:30:00">23:30</option>
                								<option value="T24:00:00">24:00</option>
            							</select>	
            							<button id="allday">종일</button>
								</div>
							</td>
						</tr>
						<tr>
							<th>
								<div class="th_div">종료일</div>
							</th>
							<td>
								<div class="td_div">
									<input type="text" id="END_DATE_F" readonly style="margin-right:10px;">
									<select id="END_DATE_B" style="width: 155px; margin-right: 50px;">
                								<option value="T00:00:00">00:00</option>
                								<option value="T00:30:00">00:30</option>
								                <option value="T01:00:00">01:00</option>
                								<option value="T01:30:00">01:30</option>
                								<option value="T02:00:00">02:00</option>
                								<option value="T02:30:00">02:30</option>
                								<option value="T03:00:00">03:00</option>
                								<option value="T03:30:00">03:30</option>
                								<option value="T04:00:00">04:00</option>
                								<option value="T04:30:00">04:30</option>
                								<option value="T05:00:00">05:00</option>
                								<option value="T05:30:00">05:30</option>
                								<option value="T06:00:00">06:00</option>
                								<option value="T06:30:00">06:30</option>
                								<option value="T07:00:00">07:00</option>
                								<option value="T07:30:00">07:30</option>
                								<option value="T08:00:00">08:00</option>
                								<option value="T08:30:00">08:30</option>
                								<option value="T09:00:00">09:00</option>
               								 	<option value="T09:30:00">09:30</option>
                								<option value="T10:00:00">10:00</option>
                								<option value="T10:30:00">10:30</option>
                								<option value="T11:00:00">11:00</option>
                								<option value="T11:30:00">11:30</option>
                								<option value="T12:00:00">12:00</option>
                								<option value="T12:30:00">12:30</option>
                								<option value="T13:00:00">13:00</option>
                								<option value="T13:30:00">13:30</option>
                								<option value="T14:00:00">14:00</option>
                								<option value="T14:30:00">14:30</option>
                								<option value="T15:00:00">15:00</option>
                								<option value="T15:30:00">15:30</option>
                								<option value="T16:00:00">16:00</option>
                								<option value="T16:30:00">16:30</option>
                								<option value="T17:00:00">17:00</option>
                								<option value="T17:30:00">17:30</option>
                								<option value="T18:00:00">18:00</option>
               								 	<option value="T18:30:00">18:30</option>
                								<option value="T19:00:00">19:00</option>
                								<option value="T19:30:00">19:30</option>
                								<option value="T20:00:00">20:00</option>
                								<option value="T20:30:00">20:30</option>
                								<option value="T21:00:00">21:00</option>
                								<option value="T21:30:00">21:30</option>
                								<option value="T22:00:00">22:00</option>
                								<option value="T22:30:00">22:30</option>
                								<option value="T23:00:00">23:00</option>
                								<option value="T23:30:00">23:30</option>
                								<option value="T24:00:00">24:00</option>
            							</select>	
								</div>
							</td>
						</tr>
						<tr>
							<th>
								<div class="th_div">일정 설명</div>
							</th>
							<td>
								<div class="td_div">
									<input type="text" name="CALENDAR_DISCRIPTION" maxlength="100" style="width:400px;">
								</div>
							</td>
						</tr>
					</table>
				</div>
				<div class="button-wrap">
					<input type="hidden" name="START_DATE" id="START_DATE">
            		<input type="hidden" name="END_DATE" id="END_DATE">

            		<input type="hidden" name="CALENDAR_WRITER" value="${sessionScope.MEMBER_NAME}">
            		<input type="hidden" name="CALENDAR_WRITERID" value="${sessionScope.MEMBER_ID}">

            		<input type="hidden" name="ALLDAY" id="ALLDAY" value="false"> <!-- 기본 값 -->
					<button id="insertButton">등록</button>
					<button id="cancleButton">취소</button>
				</div>
			</div>
		</form>
	</div>


    <script>
        var calendar;
        var allDayCheck = false;
		
        var clickTimeout;
        var doubleClickThreshold = 300; // 더블클릭 간격 (밀리초)
        
        document.addEventListener('DOMContentLoaded', function() {
            var calendarEl = document.getElementById('calendar');
                calendar = new FullCalendar.Calendar(calendarEl, {
                initialView: 'dayGridMonth',
                locale: 'ko', // 한국어 설정
                headerToolbar: {
                    left: "prev,next today",
                    center: "title",
                    right: 'dayGridMonth,dayGridWeek'
                },
                selectable: true,
                droppable: true,
                editable: true,
                displayEventTime: false, // 시간 표시 x
                select : function(info) {
                	var startDate = info.startStr;

                    console.log(startDate);

                    // 클릭과 더블클릭 구분하기
                    if (clickTimeout) {
                        clearTimeout(clickTimeout);
                        clickTimeout = null;

                        // 더블클릭 처리
                        handleDoubleClick(startDate);
                    } else {
                        clickTimeout = setTimeout(function() {
                            clickTimeout = null;
                            // 클릭 처리
                            handleClick(startDate);
                        }, doubleClickThreshold);
                    }
        
                },
                eventClick: function(info) { // 상세 정보
                    var eventId = info.event.id;
                    console.log(eventId);
                    
                    var goRead = '/readEvent.do?ID='+eventId
                    $('.viewContents').load(goRead);
                },
                events: [
                    <c:forEach items="${list}" var="event">
                        {
                        	id: '${event.CALENDAR_ID}',
                            groupId: '${event.CALENDAR_GROUPID}',
                            title: '${event.CALENDAR_TITLE}',
                            start: '${event.START_DATE}',
                            end: '${event.END_DATE}',
                            allDay: ${event.ALLDAY == 'true'}, 
                            description: '${event.CALENDAR_DISCRIPTION}',
                            extendedProps: {
                                createdBy: '${event.CALENDAR_WRITER}',
                            }
                        },
                    </c:forEach>
            	]

                
            });
            calendar.render();
            
            function handleClick(startDate) {
                console.log("클릭됨");
                
                calendar.gotoDate(startDate);
                $('.contents').css("display", "none");
            }

            function handleDoubleClick(startDate) {
                console.log("더블클릭됨");

                $('.viewdate').css('display','none');
                $('.updateContents').css('display','none');
                
                // 인풋창 화면에 띄우기
                $('.contents').css("display", "block");

                // input에 선택한 날짜 값 넣기(시작일)
                $('#START_DATE_F').val(startDate);
            }
        });
        
        
    </script>

    <script>
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

            // 사용 예시
            $(document).ready(function() {
                // 이벤트 핸들러 등록 - DATEPICKER ID PRODUCT_DATE
                $('#END_DATE_F').datepicker({
                    dateFormat: 'yy-mm-dd', // 날짜 포맷 설정 (년-월-일)
                    dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'], // 요일 이름 축약형 설정
                    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'], // 월 이름 설정
                    monthNamesShort: ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12'], // 월 이름 축약형 설정
                    showMonthAfterYear: true, // 년도 뒤에 월 표시
                    yearSuffix: '년', // 년도 뒤에 붙는 텍스트
                    changeYear: true, // 연도 선택 가능
                    changeMonth: true, // 월 선택 가능
                    /* showButtonPanel: true, // 버튼 패널 표시 */
                    currentText: '오늘', // 오늘 날짜로 이동하는 버튼 텍스트
                    closeText: '닫기', // 닫기 버튼 텍스트
                    prevText: '이전 달', // 이전 달로 이동하는 버튼 텍스트
                    nextText: '다음 달', // 다음 달로 이동하는 버튼 텍스트
                    /* showOn: "both", // 버튼과 필드 양쪽에 표시 */
                    /* buttonImage: "/images/calender.svg", // 달력 아이콘 이미지 경로 */
                   /*  buttonImageOnly: true, // 아이콘만 표시할지 여부 */
                    onSelect: function(dateText, inst) {
                        // 선택된 날짜를 포맷하여 input 필드에 채움
                        $('#END_DATE_F').val(formatDate(dateText));
                    }
                });
                $('#START_DATE_F').datepicker({
                    dateFormat: 'yy-mm-dd', // 날짜 포맷 설정 (년-월-일)
                    dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'], // 요일 이름 축약형 설정
                    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'], // 월 이름 설정
                    monthNamesShort: ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12'], // 월 이름 축약형 설정
                    showMonthAfterYear: true, // 년도 뒤에 월 표시
                    yearSuffix: '년', // 년도 뒤에 붙는 텍스트
                    changeYear: true, // 연도 선택 가능
                    changeMonth: true, // 월 선택 가능
                    /* showButtonPanel: true, // 버튼 패널 표시 */
                    currentText: '오늘', // 오늘 날짜로 이동하는 버튼 텍스트
                    closeText: '닫기', // 닫기 버튼 텍스트
                    prevText: '이전 달', // 이전 달로 이동하는 버튼 텍스트
                    nextText: '다음 달', // 다음 달로 이동하는 버튼 텍스트
                    /* showOn: "both", // 버튼과 필드 양쪽에 표시 */
                    /* buttonImage: "/images/calender.svg", // 달력 아이콘 이미지 경로 */
                   /*  buttonImageOnly: true, // 아이콘만 표시할지 여부 */
                    onSelect: function(dateText, inst) {
                        // 선택된 날짜를 포맷하여 input 필드에 채움
                        $('#START_DATE_F').val(formatDate(dateText));
                    }
                });
            });

            $('#END_DATE_F').on('click', function(){
                allDayCheck = false;
            });

            $('#insertButton').on('click', function(){
            	
            	// 날짜 포맷
                var startDateVal = $('#START_DATE_F').val();
                var endDateVal = $('#END_DATE_F').val();
				
                var startDateValB = $('#START_DATE_B').val();
                var endDateValB = $('#END_DATE_B').val();
                
                var formatStart = new Date(startDateVal);
                var formatEnd = new Date(endDateVal);
	
                // 시작일, 종료일 합치기
                var getStart =  startDateVal + startDateValB;
                var getEnd = endDateVal + endDateValB;
                
                $('#START_DATE').val(getStart);
                $('#END_DATE').val(getEnd);
                
                if(formatStart > formatEnd ) {
                    alert('시작일보다 종료일이 먼저일 수 없습니다. 다시 설정해주세요');
                    
                    return false;
                } else if($('#CALENDAR_TITLE').val() == "" ) {
                	alert('제목을 입력해주세요.');
                	return false;
                } else if($('#START_DATE_F').val() == "") {
                	alert('시작일을 선택해주세요');
                	return false;
                } else if($('#END_DATE_F').val() == "") {
                	alert('종료일을 선택해주세요');
                	return false;
                } else {

                    if(allDayCheck) {
                        $('#ALLDAY').val(true);
                    }

					document.insertForm.submit();
                    console.log("새로고침"); 
                    
                    calendar.refetchEvents();
                    console.log("새로고침");
                }
            });          
            
            $('#cancleButton').on('click', function(event){
				 event.preventDefault(); // 폼 제출 방지
                $('.contents').hide();
            });

            

            $('#deleteButton').on('click', function(){
                var deleteChecker = confirm('해당 일정을 정말로 삭제하시겠습니까?');

                var eventId = $('#CALENDAR_ID').val();
                var goDeleteUrl = '/deleteDate.do?ID=' + eventId;

                if(deleteChecker) {
                    $.ajax({
                        url: goDeleteUrl,
                        type: 'post',
                        success: function(){
                            console.log("새로고침");
                            calendar.refetchEvents();
                        }
                    })
                } else {
                    return false;
                }
            })

            $('#allday').on('click', function(){
                var startDate = $('#START_DATE_F').val();

                var formatStartDate = new Date(startDate);
                var formatEndDate = new Date(startDate);
				
             	// 날짜를 YYYY-MM-DD 형식으로 변환하는 함수
                function formatDateToYYYYMMDD(date) {
                    var year = date.getFullYear();
                    var month = ('0' + (date.getMonth() + 1)).slice(-2); // 월을 2자리로 포맷
                    var day = ('0' + date.getDate()).slice(-2); // 일을 2자리로 포맷
                    return year + '-' + month + '-' + day;
                }

                var formattedEndDate = formatDateToYYYYMMDD(formatEndDate);
                
                $('#END_DATE_F').val(formattedEndDate);
                $('#END_DATE').val(formattedEndDate);
				$('#START_DATE').val(startDate);
                
                allDayCheck = true;
                
                return false;
            });

            $('#goUpdateButton').on('click', function(){
                var updateStartVal = $('#start_val');
                var updateEndVal = $('#end_val');

                var sliceStart = updateStartVal.substr(0,10);
                var sliceEnd = updateEndVal.substr(0,10);

                $('START_DATE_U').val(sliceStart);
                $('END_DATE_U').val(sliceEnd);

                $('.updateContents').css("display","block");
            });
    </script>
</body>
</html>

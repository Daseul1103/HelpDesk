<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="updateContents" style="display:none;">
	<form name="updateForm" action="/updateDate.do" method="post">
		<input type="hidden" id="CALENDAR_ID_U" name="CALENDAR_ID" value="${dto.CALENDAR_ID}">
		<div class="updateTitle-wrap">
			<h1>일정 수정</h1>
		</div>
		<div class="updateContent-wrap">
			<div class="updateTable-wrap">
				<table id="updateTable">
					<tr>
						<th>
							<div class="update_th">
								<p>제목</p>
							</div>
						</th>
						<td>
							<div class="update_td">
								<input type="text" name="CALENDAR_TITLE" value="${dto.CALENDAR_TITLE}" id="CALENDAR_TITLE_U" style="width:300px;height:25px;" maxlength="25">
							</div>
						</td>
					</tr>
					<tr>
						<th>
							<div class="update_th">
								<p>시작일</p>
							</div>
						</th>
						<td>
							<div class="update_td">
								<input type="text" id="START_DATE_FU" readonly style="width: 150px;margin-right: 10px;"> <!-- 년 월 일 ( 시작일은 지정 )-->
								<select id="START_DATE_BU" style="width:140px;">
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
							<div class="update_th">
								<p>종료일</p>
							</div>
						</th>
						<td>
							<div class="update_td">
								<input type="text" id="END_DATE_FU" readonly style="width: 150px;margin-right: 10px;">
					            <select id="END_DATE_BU" style="width:140px;">
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
							<div class="update_th">
								<p>등록자</p>
							</div>
						</th>
						<td>
							<div class="update_td">
								<p>${dto.CALENDAR_WRITER}</p>
							</div>
						</td>
					</tr>
					<tr>
						<th>
							<div class="update_th">
								<p>일정 설명</p>
							</div>
						</th>
						<td>
							<div class="update_td">
								<input type="text" name="CALENDAR_DISCRIPTION" value="${dto.CALENDAR_DISCRIPTION}" style="width:300px; height:25px;" maxlength="100">
							</div>
						</td>
					</tr>
				</table>
				<input type="hidden" name="START_DATE" id="START_DATE_U">
            	<input type="hidden" name="END_DATE" id="END_DATE_U">
 
 				<input type="hidden" name="ALLDAY" id="ALLDAY_U" value="false">
			</div>
			<div class="updateButton-wrap">
				<button id="updateButton">저장</button>
				<button class="cancleButton">취소</button>
			</div>
		</div>
	</form>
</div>


<%-- <div class="updateContents" style="display: none; ">
        <form name="updateForm" action="/updateDate.do" method="post">
            <input type="hidden" id="CALENDAR_ID_U" name="CALENDAR_ID" value="${dto.CALENDAR_ID}">

            <p>제목 :</p>
            <input type="text" name="CALENDAR_TITLE" value="${dto.CALENDAR_TITLE}" id="CALENDAR_TITLE_U">

            <p>시작일 :</p>
            <input type="text" id="START_DATE_FU" readonly> <!-- 년 월 일 ( 시작일은 지정 )-->
            <select id="START_DATE_BU">
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

            <p>종료일 :</p>
            <input type="text" id="END_DATE_FU" readonly>
            <select id="END_DATE_BU">
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

            <input type="hidden" name="START_DATE" id="START_DATE_U">
            <input type="hidden" name="END_DATE" id="END_DATE_U">
 
 			<input type="hidden" name="ALLDAY" id="ALLDAY_U" value="false">
            <p>일정 설명 :</p>
            <input type="text" name="CALENDAR_DISCRIPTION" value="${dto.CALENDAR_DISCRIPTION}">
        </form>
        <div id="updateButton">저장</div>
        <div class="cancleButton">취소</div>
    </div>
 --%>

	<div class="viewdate">
		<div class="viewTitle-wrap">
			<h1>일정 상세 정보</h1>
		</div>
		<div class="viewContent-wrap">
			<div class="viewTable-wrap">
				<table id="viewTable" class="tableView">
					<tr>
						<th>
							<div class="view_th">
								<input type="hidden" id="CALENDAR_ID" value="${dto.CALENDAR_ID}">
								<p>제목</p>
							</div>
						</th>
						<td>
							<div class="view_td">
								<p>${dto.CALENDAR_TITLE}</p>
							</div>
						</td>
					</tr>
					<tr>
						<th>
							<div class="view_th">
								<p>시작일</p>
							</div>
						</th>
						<td>
							<div class="view_td">
								<input type="hidden" id="start_val" value="${dto.START_DATE}">
								<p id="startDate"></p>
							</div>
						</td>
					</tr>
					<tr>
						<th>
							<div class="view_th">
								<p>종료일</p>
							</div>
						</th>
						<td>
							<div class="view_td">
								<input type="hidden" id="end_val" value="${dto.END_DATE}">
								<p id="endDate"></p>
							</div>
						</td>
					</tr>
					<tr>
						<th>
							<div class="view_th">
								<p>등록자</p>
							</div>
						</th>
						<td>
							<div class="view_td">
								<p>${dto.CALENDAR_WRITER}</p>
							</div>
						</td>
					</tr>
					<tr>
						<th>
							<div class="view_th">
								<p>일정 설명</p>
							</div>
						</th>
						<td>
							<div class="view_td">
								<p>${dto.CALENDAR_DISCRIPTION}</p>
							</div>
						</td>
					</tr>
				</table>
			</div>
			<div class="viewButton-wrap">
				<button class="cancleButton">취소</button>
				<button id="goUpdateButton">수정</button>
				<button id="deleteButton">삭제</button>
			</div>
		</div>
	</div>
    <script>
    	$(document).ready(function(){
    		var startDateVal = $('#start_val').val(); //YYYY-MM-DDTHH:MM:SS
    		var endDateVal = $('#end_val').val();
    			
    		SliceDate(startDateVal,endDateVal); //함수 호출
    			
    		function SliceDate(startDateVal,endDateVal) {
    			var startYear = startDateVal.substr(0,4); //YYYY
				var startMonth = startDateVal.substr(5,2); //MM
				var startDay = startDateVal.substr(8,2); //DD
				var startHour = startDateVal.substr(11,2) //HH
				var startMinute = startDateVal.substr(14,2); //MM
				
				var endYear = endDateVal.substr(0,4);
				var endMonth = endDateVal.substr(5,2);
				var endDay = endDateVal.substr(8,2);
				var endHour = endDateVal.substr(11,2);
				var endMinute = endDateVal.substr(14,2);
					
				var startDate = '';
				var endDate = '';
				
				// 시작일 작업
				if(startHour == '00' && startMinute == '00') { // 시작일의 시간이 00시00분일 때 
					startDate = startYear + "년" + " " + startMonth + "월" + " " + startDay + "일";
					$('#startDate').text(startDate);
					
				} else { // 시작일의 시간이 00시 NN분일 때
					startDate = startYear + "년" + " " + startMonth + "월" + " " + startDay + "일" + " " + startHour + "시" + " " + startMinute + "분";
					$('#startDate').text(startDate);
					
				} 
				
				
				// 종료일 작업
				if(endHour == '00' && endMinute =='00') {
					endDate = endYear + "년" + " " + endMonth + "월" + " " + endDay + "일";
					$('#endDate').text(endDate);
				} else {
					endDate = endYear + "년" + " " + endMonth + "월" + " " + endDay + "일" + " " + endHour + "시" + " " + endMinute + "분";
					$('#endDate').text(endDate);
				}
				
				return false;
    		}
    		
    		
    		$('.cancleButton').on('click', function(event){
    			event.preventDefault(); // 폼 제출 방지
    			console.log("숨기기");
                $('.viewdate').css('display','none');
                $('.updateContents').css('display','none');
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

            // 사용 예시
            $(document).ready(function() {
                // 이벤트 핸들러 등록 - DATEPICKER ID PRODUCT_DATE
                $('#END_DATE_FU').datepicker({
                    dateFormat: 'yy-mm-dd', // 날짜 포맷 설정 (년-월-일)
                    dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'], // 요일 이름 축약형 설정
                    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'], // 월 이름 설정
                    monthNamesShort: ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12'], // 월 이름 축약형 설정
                    showMonthAfterYear: true, // 년도 뒤에 월 표시
                    yearSuffix: '년', // 년도 뒤에 붙는 텍스트
                    changeYear: true, // 연도 선택 가능
                    changeMonth: true, // 월 선택 가능
/*                     showButtonPanel: true, // 버튼 패널 표시 */
                    currentText: '오늘', // 오늘 날짜로 이동하는 버튼 텍스트
                    closeText: '닫기', // 닫기 버튼 텍스트
                    prevText: '이전 달', // 이전 달로 이동하는 버튼 텍스트
                    nextText: '다음 달', // 다음 달로 이동하는 버튼 텍스트
/*                     showOn: "both", // 버튼과 필드 양쪽에 표시
                    buttonImage: "/images/calender.svg", // 달력 아이콘 이미지 경로
                    buttonImageOnly: true, // 아이콘만 표시할지 여부 */
                    onSelect: function(dateText, inst) {
                        // 선택된 날짜를 포맷하여 input 필드에 채움
                        $('#END_DATE_FU').val(formatDate(dateText));
                    }
                });
                
                $('#START_DATE_FU').datepicker({
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
                        $('#START_DATE_FU').val(formatDate(dateText));
                    }
                });
            });

           /*  $('#START_DATE_BU').on('change', function(){
                var nowStartTime = $(this).val();
                var nowStartDate = $('#START_DATE_FU').val();
                
                var nowSdate = nowStartDate+nowStartTime;

                console.log(nowStartTime);
                console.log(nowStartDate);
                console.log(nowSdate);

                $('#START_DATE_U').val(nowSdate);
            });

            $('#END_DATE_BU').on('change', function(){
                var nowEndTime = $(this).val();
                var nowEndDate = $('#END_DATE_FU').val();
                
                var nowEdate = nowEndDate+nowEndTime;

                console.log(nowEndTime);
                console.log(nowEndDate);
                console.log(nowEdate);

                $('#END_DATE_U').val(nowEdate);
            }); */
            
            var startDate = $('#start_val').val();
            var endDate = $('#end_val').val();
            
            function containsT(dateString) {
                // 'T'가 날짜 문자열에 포함되어 있는지 확인
                return dateString.indexOf('T') !== -1;
            }
            
            if (containsT(startDate)) {
            	var startDateSlice = startDate.substr(0,10);
            	var startDateSliceB = startDate.substr(11,5);
            	
            	$('#startText').text("시작일 :"+startDateSlice);
            	$('#setStartTime').text("시작 시간 :" +startDateSliceB);
            	
            } else {
            	
            	$('#startText').text("시작일 :"+startDate);
            	$('#setStartTime').hide();
            }
            
            if (containsT(endDate)) {
            	var endDateSlice = endDate.substr(0,10);
            	var endDateSliceB = endDate.substr(11,5);
            	
            	$('#endText').text("종료일 :"+endDateSlice);
            	$('#setEndTime').text("종료 시간 :" +endDateSliceB);
            	
            } else {
            	
            	$('#endText').text("종료일 :"+startDate);
            	$('#setEndTime').hide();
            }
            
            $('#END_DATE_FU').on('click', function(){
                allDayCheck = false;
            });
            
    		console.log("로드 완료");
    		$('.viewdate').css("display","");
			
    		
    		// 수정
            $('#updateButton').on('click', function(){
                var startDateVal = $('#START_DATE_FU').val();
                var endDateVal = $('#END_DATE_FU').val();
				
                var startDateValB = $('#START_DATE_BU').val();
                var endDateValB = $('#END_DATE_BU').val();
                
                var formatStart = new Date(startDateVal);
                var formatEnd = new Date(endDateVal);
                
                if(formatStart > formatEnd ) {
                    alert('시작일보다 종료일이 먼저일 수 없습니다. 다시 설정해주세요');
                    return false;
                } else if($('#CALENDAR_TITLE_U').val() == "") {
                	alert('제목을 입력해 주세요.');
                	return false;
                } else if($('#START_DATE_FU').val() == "") {
                	alert('시작일을 선택해주세요');
                	return false;
                } else if($('#END_DATE_FU').val() == "") {
                	alert('종료일을 선택해주세요');
                	return false;
                } else {
                	var updateChecker = confirm('이대로 저장하시겠습니까?');
                    if(updateChecker) {
                    	
                    	var getStart =  startDateVal + startDateValB;
                        var getEnd = endDateVal + endDateValB;
                        
                        $('#START_DATE_U').val(getStart);
                        $('#END_DATE_U').val(getEnd);
                        
                    	document.updateForm.submit();
                    	
                    	console.log("새로고침");
                        calendar.refetchEvents();
                    }else {
                    	return false;
                    }
                }
            });          

            $('#deleteButton').on('click', function(){
                var deleteChecker = confirm('해당 일정을 정말로 삭제하시겠습니까?');

                var eventId = $('#CALENDAR_ID').val();
                var goDeleteUrl = '/deleteDate.do?ID=' + eventId;

                if(deleteChecker) {
					location.href=goDeleteUrl;
                } else {
                    return false;
                }
            })
            
            $('#goUpdateButton').on('click', function(){           	
                var updateStartVal = $('#start_val').val();
                var updateEndVal = $('#end_val').val();

                var sliceStart = updateStartVal.substr(0,10);
                var sliceEnd = updateEndVal.substr(0,10);
				
                var sliceStartB = updateStartVal.substr(10,9);
                var sliceEndB = updateEndVal.substr(10,9);
                
                console.log(sliceStartB); // 확인
                console.log(sliceEndB);   // 확인

                
                $('#START_DATE_FU').val(sliceStart);
                $('#END_DATE_FU').val(sliceEnd);

                
                $('#START_DATE_BU option').each(function() {
                    if ($(this).val() === sliceStartB) {
                        $(this).prop('selected', true);
                    }
                });
                
                $('#END_DATE_BU option').each(function() {
                    if ($(this).val() === sliceEndB) {
                    	console.log("확인");
                        $(this).prop('selected', true);
                    }
                });
                
                $('.updateContents').css("display","block");
                $('.viewdate').css('display','none');
            });
    	})
    </script>
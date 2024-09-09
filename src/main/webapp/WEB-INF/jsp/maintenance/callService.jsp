<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="listType_contianer">
        <p>점검 리스트 유형 :</p>
        <select name="LIST_TYPE" id="LIST_TYPE" onchange="LoadChange()">
            <option value="service">서비스 내역서</option>
            <option value="result">점검 결과 보고서 (점검 결과 + 점검 내역서)</option>
        </select>
    </div>
    <table id="table1">
        <tr>
            <th class="th_style" style="width: 250px;">
                <div>
                    고객사
                </div>
            </th>
            <td>
                <div>
                	<p id="showChecker"></p>
                    <input type="hidden" id="CHECKER_COM" name="CHECKER_COM" readonly>
                </div>
            </td>
        </tr>
        <tr>
            <th class="th_style" style="width: 250px;">
                <div>
                    점검 일자
                </div>
            </th>
            <td>
                <label for="inspection_date">
                <div>
                    <input type="text" id="inspection_date" name="INSPECTION_DATE" readonly style="text-align: center;">
                </div>
                </label>
            </td>
        </tr>
    </table>

    <table id="table2">
        <tr>
            <th style="width: 250px;" class="th_style">
                <div>
                    계약 유형
                </div>
            </th>
            <td>
                <div>
                    <input type="checkbox" id="CONTRACT_TYPE" name="CONTRACT_TYPE"  value="call" checked>
                    <label for="CONTRACT_TYPE">콜</label>
                </div>
            </td>
        </tr>
        <tr>
            <th style="width: 250px;" class="th_style">
                <div>
                    방문 유형
                </div>
            </th>
            <td>
                <div>
                    <input type="radio" name="VISIT_TYPE" id="regular_inspection" value="regular_inspection" checked>
                    <label for="regular_inspection">정기/예방 점검</label>
                    <input type="radio" name="VISIT_TYPE" id="emergency_inspection" value="emergency_inspection">
                    <label for="emergency_inspection">긴급 점검</label>
                    <input type="radio" name="VISIT_TYPE" id="spot" value="spot">
                    <label for="spot">현장 대기</label>
                    <input type="radio" name="VISIT_TYPE" id="delivery" value="delivery">
                    <label for="delivery">납품</label>
                </div>
            </td>
        </tr>
    </table>
    <table id="table3">
        <tr>
            <th style="width: 250px;" class="th_style">
                <div>
                    접수 내역
                </div>
            </th>
            <td>
                <label for="LIST_TITLE">
                <div>
                    <input type="text" name="LIST_TITLE" id="LIST_TITLE">
                </div>
                </label>
            </td>
        </tr>
    </table>
    <table id="table4">
        <tr>
            <th colspan="2" style="width:500px;" class="th_style">
                <div>
                    일 반 점 검 내 용
                </div>
            </th>
            <th colspan="2" style="width:500px;" class="th_style">
                <div>
                    점 검 상 태
                </div>
            </th>
        </tr>
        <tr>
            <td>
                <div>
                    1
                </div>
            </td>
            <td>
                <div>
                    Display 장비 표출 상태
                </div>
            </td>
            <td colspan="2">
                <div>
                    <input type="radio" name="SERVICE_LIST1" id="nor1" value="nor">
                    <label for="nor1">정상 동작</label>
                    <input type="radio" name="SERVICE_LIST1" id="ab_nor_1" value="ab_nor">
                    <label for="ab_nor_1">오동작</label>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div>
                    2
                </div>
            </td>
            <td>
                <div>
                    Controll System 연동 상태
                </div>
            </td>
            <td colspan="2">
                <div>
                    <input type="radio" name="SERVICE_LIST2" id="nor2" value="nor">
                    <label for="nor2">정상 동작</label>
                    <input type="radio" name="SERVICE_LIST2" id="ab_nor_2" value="ab_nor">
                    <label for="ab_nor_2">오동작</label>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div>
                    3
                </div>
            </td>
            <td>
                <div>
                    입력 신호 표출 상태
                </div>
            </td>
            <td colspan="2">
                <div>
                    <input type="radio" name="SERVICE_LIST3" id="nor3" value="nor">
                    <label for="nor3">정상</label>
                    <input type="radio" name="SERVICE_LIST3" id="ab_nor_3" value="ab_nor">
                    <label for="ab_nor_3">이상</label>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div>
                    4
                </div>
            </td>
            <td>
                <div>
                    각종 장비 구동 상태
                </div>
            </td>
            <td colspan="2">
                <div>
                    <input type="radio" name="SERVICE_LIST4" id="nor4" value="nor">
                    <label for="nor4">정상 동작</label>
                    <input type="radio" name="SERVICE_LIST4" id="ab_nor_4" value="ab_nor">
                    <label for="ab_nor_4">오동작</label>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div>
                    5
                </div>
            </td>
            <td>
                <div>
                    각종 케이블 연결 상태
                </div>
            </td>
            <td colspan="2">
                <div>
                    <input type="radio" name="SERVICE_LIST5" id="nor5" value="nor">
                    <label for="nor5">정상</label>
                    <input type="radio" name="SERVICE_LIST5" id="ab_nor_5" value="ab_nor">
                    <label for="ab_nor_5">이상</label>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div>
                    6
                </div>
            </td>
            <td>
                <div>
                    장비 청결 상태(스크린 포함)
                </div>
            </td>
            <td colspan="2">
                <div>
                    <input type="radio" name="SERVICE_LIST6" id="good" value="good">
                    <label for="good">양호</label>
                    <input type="radio" name="SERVICE_LIST6" id="clean" value="clean">
                    <label for="clean">청소 요함</label>
                    <input type="radio" name="SERVICE_LIST6" id="bad" value="bad">
                    <label for="bad">이상 발생</label>
                </div>
            </td>
        </tr>
    </table>
    <table id="table5">
        <tr>
            <th class="th_style">
                <div>
                    - 점 검 결 과 -
                </div>
            </th>
        </tr>
        <td>
            <div>
                <textarea name="INSPECTION_RESULT" wrap="hard" id="INSPECTION_RESULT">

                </textarea>
            </div>
        </td>
    </table>
    <table id="table6">
        <tr>
            <th class="th_style">
                <div>
                    - 기 타 사 항 -
                </div>
            </th>
        </tr>
        <td>
            <div>
                <textarea name="ETC" wrap="hard" id="ETC">

                </textarea>
            </div>
        </td>
    </table>
    <table id="table7">
        <tr>
            <th rowspan="2" style="width: 200px;" class="th_style">
                <div>
                    점검자
                </div>
            </th>
            <td rowspan="2" style="width: 300px;">
                <label for="INSPECTOR">
                <div>
                	<p id="showInsepctor"></p>
                    <input type="hidden" name="INSPECTOR" id="INSPECTOR">
                </div>
                </label>
            </td>
            <th style="width: 200px;" class="th_style">
                <div>
                    고객 확인
                </div>
            </th>
            <td>
                <label for="CHECKER">
                <div>
                    <input type="text" name="CHECKER" id="CHECKER">
                </div>
                </label>
            </td>
        </tr>
        <tr>
            <th class="th_style">
                <div>
                    연락처
                </div>
            </th>
            <td>
                <label for="CHECKER_TEL">
                <div>
                    <input type="text" name="CHECKER_TEL" id="CHECKER_TEL">
                </div>
                </label>
            </td>
        </tr>
    </table>
	<script>
	var company = $('#company').val();
	var inspector = $('#inspector').val();
	
	$('#CHECKER_COM').val(company);
	$('#showChecker').text(company)
	
	$('#INSPECTOR').val(inspector);
	$('#showInsepctor').text(inspector);
	
	$('#inspection_date').datepicker({
        dateFormat: 'yy-mm-dd', // 날짜 포맷 설정 (년-월-일)
        dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'], // 요일 이름 축약형 설정
        monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'], // 월 이름 설정
        monthNamesShort: ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12'], // 월 이름 축약형 설정
        showMonthAfterYear: true, // 년도 뒤에 월 표시
        yearSuffix: '년', // 년도 뒤에 붙는 텍스트
        changeYear: true,
        changeMonth: true,
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
            $('#inspection_date').val(formatDate(dateText));
        }
        
	});
	
	$('#CHECKER').on('input', function(){
    	var CHECKER= $(this).val();
    	CHECKER = CHECKER.replace(/[^ㄱ-ㅎ가-힣a-zA-Z]/g, '');
    	 $(this).val(CHECKER);
    });
    
    $("#CHECKER_TEL").on('blur keyup' , function() {
        $(this).val($(this).val().replace(/[^\d]/g, '').replace(/(\d{3})(\d{3,4})(\d{4})/, '$1-$2-$3').substring(0, 13)); // 숫자만 입력 & 자동 하이픈 붙이기 기능
    });
    
    $('#CHECKER_TEL').on('input', function(){
    	var CHECKER_TEL= $(this).val();
    	CHECKER_TEL= CHECKER_TEL.replace(/[^0-9]/g, '');
    	 $(this).val(CHECKER_TEL);
    });
    </script>
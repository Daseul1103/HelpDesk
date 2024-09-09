<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<input type="hidden" name="CONTRACT_TYPE" value="year">
<div class="listType_contianer">
    <p>점검 리스트 유형 :</p>
    <select name="LIST_TYPE" id="LIST_TYPE" onchange="LoadChange()">
        <option value="result">점검 결과 보고서 (점검 결과 + 점검 내역서)</option>
        <option value="service">서비스 내역서</option>
    </select>
</div>
<table id="table8">
    <tr>
        <th class="th_style" style="min-width:98px;">
            <div>제목</div>
        </th>
        <td>
        	<div>
        		<input type="text" name="LIST_TITLE" id="LIST_TITLE">
        	</div>
        </td>
    </tr>
    <tr>
        <th class="th_style">
            <div>점검일</div>
        </th>
        <td>
        	<div>
            	<input type="text" id="inspection_date" name="INSPECTION_DATE" readonly style="text-align: center;">
        	</div>
        </td>
    </tr>
</table>

<table id="table9">
    <tr>
        <th class="th_style">
            <div>점검 결과</div>
        </th>
    </tr>
    <tr>
        <td>
            <textarea name="INSPECTION_RESULT" wrap="hard" id="INSPECTION_RESULT"></textarea>
        </td>
    </tr>
    <tr>
        <th class="th_style">
            <div>기타 사항</div>
        </th>
    </tr>
    <tr>
        <td>
            <textarea name="ETC" wrap="hard" id="ETC"></textarea>
        </td>
    </tr>
</table>

<div class="container">
    <div class="table-container">
        <!-- 초기 테이블 -->
        <table id="table10">
            <tr>
                <th class="th_style">
                    <div>품명</div>
                </th>
                <th colspan="2" class="th_style">
                    <div>점검 사항</div>
                </th>
                <th class="th_style">
                    <div>점검 결과</div>
                </th>
            </tr>
            <tr>
                <td rowspan="11">
                    <div>Cube</div>
                </td>
                <td>
                    <div>1</div>
                </td>
                <td>
                    <div>화면 영상 표출 상태</div>
                </td>
                <td>
                    <div>
                        <input type="radio" id="list1" name="LIST1" value="nor">
                        <label for="list1">양호</label>
                        <input type="radio" id="list1_n" name="LIST1" value="ab_nor">
                        <label for="list1_n">이상</label>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div>2</div>
                </td>
                <td>
                    <div>밝기, 색상, 엣지, 화면 짤림 상태</div>
                </td>
                <td>
                    <div>
                        <input type="radio" id="list2" name="LIST2" value="nor">
                        <label for="list2">양호</label>
                        <input type="radio" id="list2_n" name="LIST2"  value="ab_nor">
                        <label for="list2_n">이상</label>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div>3</div>
                </td>
                <td>
                    <div>메인보드 상태 표시 녹색점등 확인</div>
                </td>
                <td>
                    <div>
                        <input type="radio" id="list3" name="LIST3" value="nor">
                        <label for="list3">양호</label>
                        <input type="radio" id="list3_n" name="LIST3" value="ab_nor">
                        <label for="list3_n">이상</label>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div>4</div>
                </td>
                <td>
                    <div>Screen 상태 확인</div>
                </td>
                <td>
                    <div>
                        <input type="radio" id="list4" name="LIST4" value="nor">
                        <label for="list4">양호</label>
                        <input type="radio" id="list4_n" name="LIST4" value="ab_nor">
                        <label for="list4_n">이상</label>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div>5</div>
                </td>
                <td>
                    <div>Geometry (grid 상태) 확인</div>
                </td>
                <td>
                    <div>
                        <input type="radio" id="list5" name="LIST5" value="nor">
                        <label for="list5">양호</label>
                        <input type="radio" id="list5_n" name="LIST5" value="ab_nor">
                        <label for="list5_n">이상</label>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div>6</div>
                </td>
                <td>
                    <div>엔진 상태(렌즈부, 반사경 등 육안 확인)</div>
                </td>
                <td>
                    <div>
                        <input type="radio" id="list6" name="LIST6" value="nor">
                        <label for="list6">양호</label>
                        <input type="radio" id="list6_n" name="LIST6" value="ab_nor">
                        <label for="list6_n">이상</label>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div>7</div>
                </td>
                <td>
                    <div>Power 공급 상태</div>
                </td>
                <td>
                    <div>
                        <input type="radio" id="list7" name="LIST7" value="nor">
                        <label for="list7">양호</label>
                        <input type="radio" id="list7_n" name="LIST7" value="ab_nor">
                        <label for="list7_n">이상</label>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div>8</div>
                </td>
                <td>
                    <div>후면 LCD 상태 확인</div>
                </td>
                <td>
                    <div>
                        <input type="radio" id="list8" name="LIST8" value="nor">
                        <label for="list8">양호</label>
                        <input type="radio" id="list8_n" name="LIST8" value="ab_nor">
                        <label for="list8_n">이상</label>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div>9</div>
                </td>
                <td>
                    <div>후면 배기 FAN 동작 상태 확인</div>
                </td>
                <td>
                    <div>
                        <input type="radio" id="list9" name="LIST9" value="nor">
                        <label for="list9">양호</label>
                        <input type="radio" id="list9_n" name="LIST9" value="ab_nor">
                        <label for="list9_n">이상</label>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div>10</div>
                </td>
                <td>
                    <div>LED칩 (R,G,B) 3색 표출상태 확인</div>
                </td>
                <td>
                    <div>
                        <input type="radio" id="list10" name="LIST10" value="nor">
                        <label for="list10">양호</label>
                        <input type="radio" id="list10_n" name="LIST10" value="ab_nor">
                        <label for="list10_n">이상</label>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div>11</div>
                </td>
                <td>
                    <div>메인보드 상태 표시 녹색점등 확인</div>
                </td>
                <td>
                    <div>
                        <input type="radio" id="list11" name="LIST11" value="nor">
                        <label for="list11">양호</label>
                        <input type="radio" id="list11_n" name="LIST11" value="ab_nor">
                        <label for="list11_n">이상</label>
                    </div>
                </td>
            </tr>
        </table>
    </div>
</div>

<table id="table11">
    <tr>
        <th class="th_style" style="width: 139px;">
            <div>점검자 소속</div>
        </th>
        <td style="width: 355px;">
        	<div>
        		<p id="showInspectorCom"></p>
        		<input type="hidden" name="INSPECTOR_COM" id="INSPECTOR_COM">
        	</div>
        </td>
        <th class="th_style" style="width: 139px;">
            <div>확인자 소속</div>
        </th>
        <td>
        	<div>
        		<p id="showcheckerCom"></p>
        		 <input type="hidden" name="CHECKER_COM" id="CHECKER_COM">
        	</div>
        </td>
    </tr>
    <tr>
        <th class="th_style">
            <div>점검자</div>
        </th>
        <td>
        	<div>
        		<p id="showInspector"></p>
        		<input type="hidden" name="INSPECTOR" id="INSPECTOR">
        	</div>
        </td>
        <th class="th_style">
            <div>확인자</div>
        </th>
        <td>
        	<div>
            	<input type="text" name="CHECKER" id="CHECKER">
            </div>
        </td>
    </tr>
</table>
<script>
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
        
        var company = $('#company').val();
        var insepctorCompany = $('#inspectorCompany').val();
        var inspector = $('#inspector').val();
        
        $('#showInspectorCom').text(insepctorCompany);
        $('#INSPECTOR_COM').val(insepctorCompany);
        
        $('#showcheckerCom').text(company);
        $('#CHECKER_COM').val(company);
        
        $('#INSPECTOR').val(inspector);
        $('#showInspector').text(inspector);
        
        $('#CHECKER').on('input', function(){
        	var CHECKER= $(this).val();
        	CHECKER = CHECKER.replace(/[^ㄱ-ㅎ가-힣a-zA-Z]/g, '');
        	 $(this).val(CHECKER);
        });
</script>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <!-- jQuery UI CSS 파일 import : DatePicker 사용을 위함 -->
        <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <!-- jQuery UI 라이브러리 파일 import : DatePicker 사용을 위함 -->
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
        <!-- jQuery 한글 언어 파일 import : DatePicker 사용을 위함 -->
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
    <title>장비 관리</title>
<link rel="stylesheet" href="/css/update.css">
</head>
<body>
    <div class="topMenu_comtatiner"> <!-- 상단 메뉴바 컨테이너 시작 -->
        <div class="topMenu_top"> <!-- 상단 메뉴바에서 상단 메뉴 (홈페이지 로고 및 대메뉴 , 로그인/로그아웃)-->
            <div class="homepageLogo"> <!-- 홈페이지 로고 div -->
                <div class="logo_div"></div>
            </div>
            <div class="bigMenu"> <!-- 대메뉴 div -->
                <p style="color: #00CCFF;"><a href="/home.do">장비 관리</a></p>
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
                <p class="miniMenu_title">장비 정보 수정</p>
            </div>
        </div> 
    </div> <!-- 상단 메뉴바 컨테이너 끝 -->
    <div class="mainContent_container">
        <div class="topContent"> <!-- 메인 컨텐츠 에서 상단 부분-->
            <div class="topTitle"> <!-- 메인 컨텐츠 대제목 -->
                <h1>장비 수정</h1>
                <p><span style="color:red;">*</span> 표시는 필수 입력 사항입니다.</p>
            </div>
        </div>
        <div class="contentArea">
            <form name="updateForm" method="post" action="/update_device.do">
            	<input type="hidden" name="BNO" value="${dto.BNO}">
            	<input type="hidden" id="DEVICE_NAME" value="${dto.DEVICE_NAME}">
                <table class="contentTable">
                    <tr>
                        <th style="width: 200px;">
                            <div>
                                <p>장치 종류</p>
                            </div>
                        </th>
                        <td style="width: 294px;">
                            <div>
                                <select id="device_type" class="selectStyle"> <!-- 값을 변경할 때 마다 함수 실행 -->
                                    <option value="${dto.DEVICE_TYPE}">${dto.DEVICE_TYPE}</option>
                                </select>
                                <input type="hidden" name="DEVICE_TYPE" value="${dto.DEVICE_TYPE}">
                            </div>
                        </td>
                        <th style="width: 200px;">
                            <div>
                                <p>장치명</p>
                            </div>
                        </th>
                        <td style="width: 294px;">
                            <div>
                                <select id="device_name" class="selectStyle">
                                    <option value="${dto.DEVICE_NAME}">${dto.DEVICE_NAME}</option>
                                </select>
                                <input type="hidden" name="DEVICE_NAME" value="${dto.DEVICE_NAME}">
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <div>
                                <p>모델/제품명</p>
                            </div>
                        </th>
                        <td>
                            <div>
                                <select id="device_model" class="selectStyle">
                                    <option value="${dto.DEVICE_MODEL}">${dto.DEVICE_MODEL}</option>
                                </select>
                                <input type="hidden" name="DEVICE_MODEL" value="${dto.DEVICE_MODEL}">
                            </div>
                        </td>
                        <th>
                            <div>
                                <p><span style="color: red;">*</span> 제품 번호</p>
                            </div>
                        </th>
                        <td>
                            <div>
                                <input type="text" name="DEVICE_NUMBER" id="device_number" class="inputStyle" value="${dto.DEVICE_NUMBER}">
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <div>
                                <p><span style="color: red;">*</span> 제조사</p>
                            </div>
                        </th>
                        <td>
                            <div>
                                <input type="text" name="PRODUCT_COMPANY" id="product_company" class="inputStyle" value="${dto.PRODUCT_COMPANY}">
                            </div>
                        </td>
                        <th>
                            <div>
                                <p><span style="color: red;">*</span> 제조일</p>
                            </div>
                        </th>
                        <td>
                            <div>
                                <input type="text" name="PRODUCT_DATE" id="product_date" class="inputStyle" style="margin-right: 5px;" value="${dto.PRODUCT_DATE}" readonly>
                            </div>
                        </td>
                    </tr>
                    <c:if test="${dto.DEVICE_NAME eq 'CUBE'}">
                    <tr>
                        <th>
                            <div>
                                <p>엔진 모듈</p>
                            </div>
                        </th>
                        <td>
                            <div>
                                <select name="ENGINE_MODEL" id="ENGINE_MODEL" class="selectStyle">
                                    <option value="${dto.ENGINE_MODEL}">${dto.ENGINE_MODEL}</option>
                                </select>
                            </div>
                        </td>
                        <th>
                            <div>
                                <p>엔진 제조사</p>
                            </div>
                        </th>
                        <td>
                            <div>
                                <input type="text" name="ENGINE_PRODUCT_C" id="ENGINE_PRODUCT_C" maxlength="15" class="inputStyle" value="${dto.ENGINE_PRODUCT_C}">
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <div>
                                <p>파워 모듈</p>
                            </div>
                        </th>
                        <td>
                            <div>
                                <select name="POWER_MODEL" id="POWER_MODEL" class="selectStyle">
                                    <option value="${dto.POWER_MODEL}">${dto.POWER_MODEL}</option>
                                </select>
                            </div>
                        </td>
                        <th>
                            <div>
                                <p>파워 제조사</p>
                            </div>
                        </th>
                        <td>
                            <div>
                                <input type="text" name="POWER_PRODUCT_C" id="POWER_PRODUCT_C" class="inputStyle" maxlength="15" value="${dto.POWER_PRODUCT_C}">
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <div>
                                <p>쿨링팬</p>
                            </div>
                        </th>
                        <td>
                            <div>
                                <select name="COOLING_MODEL" id="COOLING_MODEL" class="selectStyle">
                                    <option value="WJS601512H-F40" <c:if test="${dto.COOLING_MODEL eq 'WJS601512H-F40'}">selected="selected"</c:if>>WJS601512H-F40</option>
                                    <option value="WJB21203212H-F25(BLOWER)" <c:if test="${dto.COOLING_MODEL eq 'WJB21203212H-F25(BLOWER)'}">selected="selected"</c:if>>WJB21203212H-F25(BLOWER)</option>
                                </select>
                            </div>
                        </td>
                        <th>
                            <div>
                                <p>쿨링팬 제조사</p>
                            </div>
                        </th>
                        <td>
                            <div>
                                <input type="text" name="COOLING_PRODUCT_C" id="COOLING_PRODUCT_C" class="inputStyle" maxlength="15" value="${dto.COOLING_PRODUCT_C}">
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <div>
                                <p>PCB A</p>
                            </div>
                        </th>
                        <td>
                            <div>
                                <select name="PCB_A" id="PCB_A" class="selectStyle">
                                    <option value="C786">C786</option>
                                </select>
                            </div>
                        </td>
                        <th>
                            <div>
                                <p>PCB A 제조사</p>
                            </div>
                        </th>
                        <td>
                            <div>
                                <input type="text" name="PCB_A_PRODUCT" id="PCB_A_PRODUCT" class="inputStyle" maxlength="15" value="${dto.PCB_A_PRODUCT}">
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <div>
                                <p>PCB B</p>
                            </div>
                        </th>
                        <td>
                            <div>
                                <select name="PCB_B" id="PCB_B" class="selectStyle">
                                    <option value="MPU">MPU</option>
                                </select>
                            </div>
                        </td>
                        <th>
                            <div>
                                <p>PCB B 제조사</p>
                            </div>
                        </th>
                        <td>
                            <div>
                                <input type="text" name="PCB_B_PRODUCT" id="PCB_B_PRODUCT" class="inputStyle" maxlength="15" value="${dto.PCB_B_PRODUCT}">
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <div>
                                <p>PCB C</p>
                            </div>
                        </th>
                        <td>
                            <div>
                                <select name="PCB_C" id="PCB_C" class="selectStyle">
                                    <option value="Power Link(RX)">Power Link(RX)</option>
                                </select>
                            </div>
                        </td>
                        <th>
                            <div>
                                <p>PCB C 제조사</p>
                            </div>
                        </th>
                        <td>
                            <div>
                                <input type="text" name="PCB_C_PRODUCT" id="PCB_C_PRODUCT" class="inputStyle" maxlength="15" value="${dto.PCB_C_PRODUCT}">
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <div>
                                <p>NX 케이블</p>
                            </div>
                        </th>
                        <td>
                            <div>
                                <select name="NX" id="NX" class="selectStyle">
                                    <option value="NX469">NX469</option>
                                </select>
                            </div>
                        </td>
                        <th>
                            <div>
                                <p>NX 케이블 제조사</p>
                            </div>
                        </th>
                        <td>
                            <div>
                                <input type="text" name="NX_PRODUCT_C" id="NX_PRODUCT_C" class="inputStyle" value="${dto.NX_PRODUCT_C}">
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <div>
                                <p>4PIN 케이블</p>
                            </div>
                        </th>
                        <td>
                            <div>
                                <select name="PIN_4" id="PIN_4" class="selectStyle">
                                    <option value="4PIN 케이블">4PIN 케이블</option>
                                </select>
                            </div>
                        </td>
                        <th>
                            <div>
                                <p>4PIN 케이블 제조사</p>
                            </div>
                        </th>
                        <td>
                            <div>
                                <input type="text" name="PIN_4_PRODUCT_C" id="PIN_4_PRODUCT_C" class="inputStyle" value="${dto.PIN_4_PRODUCT_C}">
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <div>
                                <p>5PIN 케이블</p>
                            </div>
                        </th>
                        <td>
                            <div>
                                <select name="PIN_5" id="PIN_5" class="selectStyle">
                                    <option value="5PIN 케이블">5PIN 케이블</option>
                                </select>
                            </div>
                        </td>
                        <th>
                            <div>
                                <p>5PIN 케이블 제조사</p>
                            </div>
                        </th>
                        <td>
                            <div>
                                <input type="text" name="PIN_5_PRODUCT_C" id="PIN_5_PRODUCT_C" class="inputStyle" value="${dto.PIN_5_PRODUCT_C}">
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <div>
                                <p>22PIN 케이블</p>
                            </div>
                        </th>
                        <td>
                            <div>
                                <select name="PIN_22" id="PIN_22" class="selectStyle">
                                    <option value="22PIN 케이블">22PIN 케이블</option>
                                </select>
                            </div>
                        </td>
                        <th>
                            <div>
                                <p>22PIN 케이블 제조사</p>
                            </div>
                        </th>
                        <td>
                            <div>
                                <input type="text" name="PIN_22_PRODUCT_C" id="PIN_22_PRODUCT_C" class="inputStyle" value="${dto.PIN_22_PRODUCT_C}">
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <div>
                                <p>스크린</p>
                            </div>
                        </th>
                        <td>
                            <div>
                                <select name="SCREEN_MODEL" id="SCREEN_MODEL" class="selectStyle">
                                    <option value="폴리카보네이트" <c:if test="${dto.SCREEN_MODEL eq '폴리카보네이트'}">selected="selected"</c:if>>폴리카보네이트</option>
                                    <option value="프레즈널" <c:if test="${dto.SCREEN_MODEL eq '프레즈널'}">selected="selected"</c:if>>프레즈널</option>
                                    <option value="렌티큘러" <c:if test="${dto.SCREEN_MODEL eq '렌티큘러'}">selected="selected"</c:if>>렌티큘러</option>
                                    <option value="스크린 프레임" <c:if test="${dto.SCREEN_MODEL eq '스크린 프레임'}">selected="selected"</c:if>>스크린 프레임</option>
                                </select>
                            </div>
                        </td>
                        <th>
                            <div>
                                <p>스크린 제조사</p>
                            </div>
                        </th>
                        <td>
                            <div>
                                <input type="text" name="SCREEN_PRODUCT_C" id="SCREEN_PRODUCT_C" class="inputStyle" maxlength="15" value="${dto.SCREEN_PRODUCT_C}">
                            </div>
                        </td>
                    </tr>
                    </c:if>
                </table>
            </form>
        </div>
        <div class="buttonArea">
            <div id="insertButton" class="insertButton">저장</div>
            <div id="cancleButton" class="cancleButton">취소</div>
        </div>
    </div>

    <script>
        $('#insertButton').on('click', function(){

        	
        	var deviceNumber = $('#device_number').val();
            var productCompany = $('#product_company').val();
            var productDate = $('#product_date').val();
            
            if(deviceNumber == "") {
                alert("제품 번호를 입력하지 않았습니다.");
                $('#device_number').focus();
            } else if( productCompany == "") {
                alert("제조사를 입력하지 않았습니다.");
                $('#product_company').focus();
            } else if( productDate == "") {
                alert("제조일을 입력하지 않았습니다.");
                $('product_date').focus();
            } else {
                var updateCheck = confirm("이대로 저장하시겠습니까?");

                if(updateCheck) {
                    document.updateForm.submit();
                    alert("성공적으로 저장되었습니다.");
                } else {
                    return false;
                }
            }
        });

        $('#cancleButton').on('click', function(){
            location.href='/home.do';
        });

        // 수정 불가 항목 비활성화 처리
        $('#device_type').attr("disabled","true");
        $('#device_name').attr("disabled","true");
        $('#device_model').attr("disabled","true");

        //datepicker 관련 함수
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

            $(document).ready(function() {
                // 이벤트 핸들러 등록 - DATEPICKER ID PRODUCT_DATE
                $('#product_date').datepicker({
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
                
				var deviceName = $('#DEVICE_NAME').val();
            	
            	if(deviceName == "CUBE") {
            		$('.contentArea').css('height','auto');
            		$('.contentArea').css('margin-bottom','3%');
            	}
            	
			/* $('#device_number').on('input', function() {
            	    $(this).val($(this).val().replaceAll(/[^0-9a-zA-Z-]/g, ''));
            	}); 
            });
            
            $('#product_company').on('input', function() {
                // 정규 표현식을 사용하여 완성형 한글만 허용
            	 $(this).val($(this).val().replace(/[^\w\s가-힣]/g, ''));
            }); */
            
            
            $('.logo_div').on('click', function(){
         		location.href='/home.do';
         	});
            
            });
	
////////// 정규식 ////////
            
            $('#device_number').on('input', function(){ // 한글 제외
            	var device_number = $(this).val();
            	device_number = device_number.replace(/[^a-zA-Z0-9!@#$%^&*()_+[\]{};':",.<>/?\\|`~\-]/g, '');
            	$(this).val(device_number);
            });
            
            $('#product_company').on('input', function(){
            	var product_company = $(this).val();
            	product_company = product_company.replace(/[^\p{L}\p{N}\s]/gu, '');
            	$(this).val(product_company)
            });
            
            $('#ENGINE_PRODUCT_C').on('input', function(){
            	var ENGINE_PRODUCT_C = $(this).val();
            	ENGINE_PRODUCT_C = ENGINE_PRODUCT_C.replace(/[^\p{L}\p{N}\s]/gu, '');
            	$(this).val(ENGINE_PRODUCT_C)
            });
            
            $('#POWER_PRODUCT_C').on('input', function(){
            	var POWER_PRODUCT_C = $(this).val();
            	POWER_PRODUCT_C = POWER_PRODUCT_C.replace(/[^\p{L}\p{N}\s]/gu, '');
            	$(this).val(POWER_PRODUCT_C)
            });
            
            $('#PIN_22_PRODUCT_C').on('input', function(){
            	var PIN_22_PRODUCT_C= $(this).val();
            	PIN_22_PRODUCT_C= PIN_22_PRODUCT_C.replace(/[^\p{L}\p{N}\s]/gu, '');
            	 $(this).val(PIN_22_PRODUCT_C);
            });
            
            $('#PIN_5_PRODUCT_C').on('input', function(){
            	var PIN_5_PRODUCT_C= $(this).val();
            	PIN_5_PRODUCT_C= PIN_5_PRODUCT_C.replace(/[^\p{L}\p{N}\s]/gu, '');
            	 $(this).val(PIN_5_PRODUCT_C);
            });
            
            $('#PIN_4_PRODUCT_C').on('input', function(){
            	var PIN_4_PRODUCT_C= $(this).val();
            	PIN_4_PRODUCT_C= PIN_4_PRODUCT_C.replace(/[^\p{L}\p{N}\s]/gu, '');
            	 $(this).val(PIN_4_PRODUCT_C);
            });
            
            $('#NX_PRODUCT_C').on('input', function(){
            	var NX_PRODUCT_C= $(this).val();
            	NX_PRODUCT_C= NX_PRODUCT_C.replace(/[^\p{L}\p{N}\s]/gu, '');
            	 $(this).val(NX_PRODUCT_C);
            });
            
            $('#SCREEN_PRODUCT_C').on('input', function(){
            	var SCREEN_PRODUCT_C= $(this).val();
            	SCREEN_PRODUCT_C= SCREEN_PRODUCT_C.replace(/[^\p{L}\p{N}\s]/gu, '');
            	 $(this).val(SCREEN_PRODUCT_C);
            });
            
            $('#COOLING_PRODUCT_C').on('input', function(){
            	var COOLING_PRODUCT_C= $(this).val();
            	COOLING_PRODUCT_C= COOLING_PRODUCT_C.replace(/[^\p{L}\p{N}\s]/gu, '');
            	 $(this).val(COOLING_PRODUCT_C);
            });
            
            $('#PCB_A_PRODUCT').on('input', function(){
            	var PCB_A_PRODUCT= $(this).val();
            	PCB_A_PRODUCT= PCB_A_PRODUCT.replace(/[^\p{L}\p{N}\s]/gu, '');
            	 $(this).val(PCB_A_PRODUCT);
            });
            
            $('#PCB_B_PRODUCT').on('input', function(){
            	var PCB_B_PRODUCT= $(this).val();
            	PCB_B_PRODUCT= PCB_B_PRODUCT.replace(/[^\p{L}\p{N}\s]/gu, '');
            	 $(this).val(PCB_B_PRODUCT);
            });
            
            $('#PCB_C_PRODUCT').on('input', function(){
            	var PCB_C_PRODUCT= $(this).val();
            	PCB_C_PRODUCT= PCB_C_PRODUCT.replace(/[^\p{L}\p{N}\s]/gu, '');
            	 $(this).val(PCB_C_PRODUCT);
            });
            

    </script>
</body>
</html>
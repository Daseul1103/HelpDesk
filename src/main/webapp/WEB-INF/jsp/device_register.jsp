<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/register.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <!-- jQuery UI CSS 파일 import : DatePicker 사용을 위함 -->
        <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <!-- jQuery UI 라이브러리 파일 import : DatePicker 사용을 위함 -->
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
        <!-- jQuery 한글 언어 파일 import : DatePicker 사용을 위함 -->
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
    <title>장비 관리</title>
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
                <p class="miniMenu_title">장비 등록</p>
            </div>
        </div> 
    </div> <!-- 상단 메뉴바 컨테이너 끝 -->
    <div class="mainContent_container">
        <div class="topContent"> <!-- 메인 컨텐츠 에서 상단 부분-->
            <div class="topTitle"> <!-- 메인 컨텐츠 대제목 -->
                <h1>장비 등록</h1>
                <p><span style="color:red;">*</span> 표시는 필수 입력 사항입니다.</p>
            </div>
        </div>
        <div class="contentArea">
            <form name="insertForm" method="post" action="/insert_device.do">
                <table class="contentTable">
                    <tr>
                        <th style="width: 200px;">
                            <div>
                                <p><span style="color: red;">*</span> 장치 종류</p>
                            </div>
                        </th>
                        <td style="width: 294px;">
                            <div>
                                <select name="DEVICE_TYPE" onchange="device_type_change(this)" id="device_type" class="selectStyle"> <!-- 값을 변경할 때 마다 함수 실행 -->
                                    <option value="none_choice">장치 종류 선택</option>
                                    <option value="Display 장치">Display 장치</option>
                                    <option value="영상전송 장치">영상전송 장치</option>
                                    <option value="케이블">케이블</option>
                                    <option value="운영 시스템">운영 시스템</option>
                                </select>
                            </div>
                        </td>
                        <th style="width: 200px;">
                            <div>
                                <p><span style="color: red;">*</span> 장치명</p>
                            </div>
                        </th>
                        <td style="width: 294px;">
                            <div>
                                <select name="DEVICE_NAME" id="device_name" onchange="device_name_change(this)" class="selectStyle">
                                    <option value="none_choice">장치명 선택</option>
                                </select>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <div>
                                <p><span style="color: red;">*</span> 모델/제품명</p>
                            </div>
                        </th>
                        <td>
                            <div>
                                <select name="DEVICE_MODEL" id="device_model" onchange="device_model_change(this)" class="selectStyle">
                                    <option value="none_choice">모델/제품명 선택</option>
                                </select>
                            </div>
                        </td>
                        <th>
                            <div>
                                <p><span style="color: red;">*</span> 제품 번호</p>
                            </div>
                        </th>
                        <td>
                            <div>
                                <input type="text" name="DEVICE_NUMBER" id="device_number" class="inputStyle" maxlength="15">
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
                                <input type="text" name="PRODUCT_COMPANY" id="product_company" class="inputStyle" maxlength="15">
                            </div>
                        </td>
                        <th>
                            <div>
                                <p><span style="color: red;">*</span> 제조일</p>
                            </div>
                        </th>
                        <td>
                            <div>
                                <input type="text" name="PRODUCT_DATE" id="product_date" class="inputStyle" style="margin-right: 5px;" readonly>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <div>
                                <p>엔진 모듈</p>
                            </div>
                        </th>
                        <td>
                            <div>
                                <select name="ENGINE_MODEL" id="ENGINE_MODEL" class="selectStyle">
                                    <option value="VAHG">VAHG</option>
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
                                <input type="text" name="ENGINE_PRODUCT_C" id="ENGINE_PRODUCT_C" class="inputStyle" maxlength="15">
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
                                    <option value="R4B-600G1V2">R4B-600G1V2</option>
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
                                <input type="text" name="POWER_PRODUCT_C" id="POWER_PRODUCT_C" class="inputStyle" maxlength="15">
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
                                    <option value="WJS601512H-F40">WJS601512H-F40</option>
                                    <option value="WJB21203212H-F25(BLOWER)">WJB21203212H-F25(BLOWER)</option>
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
                                <input type="text" name="COOLING_PRODUCT_C" id="COOLING_PRODUCT_C" class="inputStyle" maxlength="15">
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
                                <input type="text" name="PCB_A_PRODUCT" id="PCB_A_PRODUCT" class="inputStyle" maxlength="15">
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
                                <input type="text" name="PCB_B_PRODUCT" id="PCB_B_PRODUCT" class="inputStyle" maxlength="15">
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
                                <input type="text" name="PCB_C_PRODUCT" id="PCB_C_PRODUCT" class="inputStyle" maxlength="15">
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
                                <input type="text" name="NX_PRODUCT_C" id="NX_PRODUCT_C" class="inputStyle">
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
                                <input type="text" name="PIN_4_PRODUCT_C" id="PIN_4_PRODUCT_C" class="inputStyle">
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
                                <input type="text" name="PIN_5_PRODUCT_C" id="PIN_5_PRODUCT_C" class="inputStyle">
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
                                <input type="text" name="PIN_22_PRODUCT_C" id="PIN_22_PRODUCT_C" class="inputStyle">
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
                                    <option value="폴리카보네이트">폴리카보네이트</option>
                                    <option value="프레즈널">프레즈널</option>
                                    <option value="렌티큘러">렌티큘러</option>
                                    <option value="스크린 프레임">스크린 프레임</option>
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
                                <input type="text" name="SCREEN_PRODUCT_C" id="SCREEN_PRODUCT_C" class="inputStyle" maxlength="15">
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

        function device_type_change(selectType) {
            var deviceType = $(selectType).val();
            var targetType = $('#device_name');

            console.log("선택 된 장치 종류 option 태그 : " + deviceType);

            if(deviceType == "none_choice") {
                var selectVal = ["장치명 선택"];
                targetType.empty();

                for(x in selectVal) {
                    var opt = $("<option></option>");
                    opt.val("none_choice");
                    opt.text(selectVal[x]);
                    $(targetType).append(opt);
                }
            } else {
                if(deviceType == "Display 장치") {
                    var selectVal = ["CUBE"];
                } else if(deviceType == "영상전송 장치") {
                    var selectVal = ["IP Wall Controller" , "Encoder", "Decoder", "Matrix Switcher"] ;
                } else if(deviceType == "케이블") {
                    var selectVal = ["HDMI" ,"DP"];
                } else if(deviceType == "운영 시스템"){
                    var selectVal = ["Server", "Work Station", "PC", "NoteBook"];
                }

                targetType.empty();

                for(x in selectVal) {
                    var opt = $("<option></option>");
                    opt.val(selectVal[x]);
                    opt.text(selectVal[x]);
                    $(targetType).append(opt);
                }
            }

            device_name_change(); // 두번째 셀렉트 박스 실행 후 세번째 셀렉트 박스 바로 실행
        }

        function device_name_change(selectType) {
            var deviceName = $('#device_name').val();
            var targetType = $('#device_model');

            console.log("선택 된 장비명 option 태그 : " + deviceName);

            if(deviceName == "none_choice") {
                var selectVal = ["모델/제품명 선택"];
                targetType.empty();

                for(x in selectVal) {
                    var opt = $("<option></option>");
                    opt.val("none_choice");
                    opt.text(selectVal[x]);
                    $(targetType).append(opt);
                }

                    $('.contentTable tr').slice(3).hide();
                    $('.contentArea').css('height','72%');
                    $('.contentArea').css('margin-bottom','');
            } else {
                if(deviceName == "CUBE"){
                    var selectVal = ["Contra LFH 50", "Contra LFH 60", "Contra LFH 70"];

                    targetType.empty();

                    for(x in selectVal) {
                        var opt = $("<option></option>");
                        opt.val(selectVal[x]);
                        opt.text(selectVal[x]);
                        $(targetType).append(opt);
                    }

                    $('.contentTable tr').slice(3).show(); 
                    $('.contentArea').css('height','auto');
                    $('.contentArea').css('margin-bottom','2%');

                } else {
                    var selectVal = ["모델/제품명 선택"];

                    targetType.empty();

                    for(x in selectVal) {
                        var opt = $("<option></option>");
                        opt.val("none_choice");
                        opt.text(selectVal[x]);
                        $(targetType).append(opt);
                    }

                    $('.contentTable tr').slice(3).hide();
                    $('.contentArea').css('height','72%');
                    $('.contentArea').css('margin-bottom','');
                }

            }

            device_model_change(); // 세번째 셀렉트 박스 실행 후 네번째/다섯번째 셀렉트 박스 바로 실행
        }

        
        function device_model_change(selectType) {
            var deviceModel = $('#device_model').val();
            var targetTypeSize = $('#device_size');
            var targetTypeUnit = $('#device_unit');

            console.log("선택 된 모델/제품명 option 태그 :" + deviceModel);

            if(deviceModel == "none_choice"){
                var selectValSize = ["크기 선택"];
                var selectValUnit = ["단위 선택"];

                targetTypeSize.empty();
                targetTypeUnit.empty();

                for(x in selectValSize) {
                    var opt = $("<option></option>");
                    opt.val("none_choice");
                    opt.text(selectValSize[x]);
                    $(targetTypeSize).append(opt);
                }

                for(x in selectValUnit) {
                    var opt = $("<option></option>");
                    opt.val("none_choice");
                    opt.text(selectValUnit[x]);
                    $(targetTypeUnit).append(opt);
                }
            } else {

                if(deviceModel == "Contra LFH"){
                    var selectValSize = ["50","60","70"];
                    var selectValUnit = ["inch"];

                    targetTypeSize.empty();
                    targetTypeUnit.empty();

                    for(x in selectValSize) {
                        var opt = $("<option></option>");
                        opt.val(selectValSize[x]);
                        opt.text(selectValSize[x]);
                        $(targetTypeSize).append(opt);
                    }

                    for(x in selectValUnit) {
                        var opt = $("<option></option>");
                        opt.val(selectValUnit[x]);
                        opt.text(selectValUnit[x]);
                        $(targetTypeUnit).append(opt);
                    }
                } else {
                    var selectValSize = ["크기 선택"];
                    var selectValUnit = ["단위 선택"];

                    targetTypeSize.empty();
                    targetTypeUnit.empty();

                    for(x in selectValSize) {
                        var opt = $("<option></option>");
                        opt.val("none_choice");
                        opt.text(selectValSize[x]);
                        $(targetTypeSize).append(opt);
                    }

                    for(x in selectValUnit) {
                        var opt = $("<option></option>");
                        opt.val("none_choice");
                        opt.text(selectValUnit[x]);
                        $(targetTypeUnit).append(opt);
                    }
                }
            }
        }
        
        function clearVal(){
            // 디스플레이 - 큐브 선택이 아닌 경우

            // 해당 값들 비우기(null 들어가도록 처리)
            $('#ENGINE_MODEL').val("");
            $('#ENGINE_PRODUCT_C').val("");
            $('#POWER_MODEL').val("");
            $('#POWER_PRODUCT_C').val("");
            $('#PIN_22').val("");
            $('#PIN_5').val("");
            $('#PIN_4').val("");
            $('#NX').val("");
            $('#PIN_22_PRODUCT_C').val("");
            $('#PIN_5_PRODUCT_C').val("");
            $('#PIN_4_PRODUCT_C').val("");
            $('#NX_PRODUCT_C').val("");
            $('#SCREEN_MODEL').val("");
            $('#SCREEN_PRODUCT_C').val("");
            $('#COOLING_MODEL').val("");
            $('#COOLING_PRODUCT_C').val("");
            $('#PCB_A').val("");
            $('#PCB_B').val("");
            $('#PCB_C').val("");
            $('#PCB_A_PRODUCT').val("");
            $('#PCB_B_PRODUCT').val("");
            $('#PCB_C_PRODUCT').val("");
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

            // 사용 예시
            $(document).ready(function() {
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

                $('.contentTable tr').slice(3).hide(); // 처음 로딩 시 테이블 일부 숨김
            });

            $('#register_button').on('click',function(){
                var deviceNumber = $('#device_number').val();
                var productCompany = $('#product_company').val();
                var productDate = $('#product_date').val();
                var productEngine = $('#product_engine').val();
                
                if(deviceType == "none_choice") {
                    alert('장치 종류를 선택해주세요.');
                    $('#device_type').focus();
                } else if( deviceNumber == "" /*|| deviceNumber.length < 3 || deviceNumber.length > 10*/) {
                    alert("제품 번호를 입력하지 않았습니다.");
                    $('#device_number').focus();
                } else if( productCompany == "" /*|| productCompany.length < 2 || productCompany.length > 12*/) {
                    alert("제조사를 입력하지 않았습니다.");
                    $('#product_company').focus();
                } else if( productDate == "") {
                    alert("제조일을 선택하지 않았습니다.");
                    $('#product_date').focus();
                } else {  // 모든 조건이 다 참인 경우 => 데이터 전송

                    if(deviceName != "CUBE" ){
                        clearVal();
                    }

                    document.insertForm.submit();
                }
            });
            
            // 취소 버튼 클릭 시 이전 화면으로 이동 (목록)
            $('#cancleButton').on('click', function(){
                location.href='/home.do';
            });

            // 등록 버튼 클릭 시 유효성 검사 후 등록 or 반환
            $('#insertButton').on('click',function(){
                var deviceType = $('#device_type').val();
                var deviceName = $('#device_name').val();
                var deviceModel = $('#device_model').val();
                var deviceNumber = $('#device_number').val();
                var productCompany = $('#product_company').val();
                var productDate = $('#product_date').val();


                if(deviceType == "none_choice") {
                    alert('장치 종류를 선택해주세요.');
                    $('#device_type').focus();
                } else if( deviceNumber == "" /*|| deviceNumber.length < 3 || deviceNumber.length > 10*/) {
                    alert("제품 번호를 입력하지 않았습니다.");
                    $('#device_number').focus();
                } else if( productCompany == "" /*|| productCompany.length < 2 || productCompany.length > 12*/) {
                    alert("제조사를 입력하지 않았습니다.");
                    $('#product_company').focus();
                } else if( productDate == "") {
                    alert("제조일을 선택하지 않았습니다.");
                    $('#product_date').focus();
                } else {  // 모든 조건이 다 참인 경우 => 데이터 전송
                	
                	if(deviceName != "CUBE" ){
                        clearVal();
                    }
                    document.insertForm.submit();
                }
            });
            
            $('.logo_div').on('click', function(){
         		location.href='/home.do';
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
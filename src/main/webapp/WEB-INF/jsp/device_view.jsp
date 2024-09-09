<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/view.css">
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
                <p><a href="/home.do">장비 관리</a></p>
                <p><a href="/customer.do">고객사 관리</a></p>
                <p><a href="/project.do">프로젝트 관리</a></p>
                <p><a href="/maintenance.do">유지보수 관리</a></p>
                <p><a href="/helpDeskEmp.do">Help Desk</a></p>
            </div>
            <div class="userLogin"> <!-- 로그인/로그아웃 -->
                <div class="userImg"> <!-- 유저 이미지 div --> </div>
                <p><span style="color: #3366CC;">${sessionScope.MEMBER_NAME}</span> 님 &nbsp 환영합니다. </p> <!-- 로그인 정보 -->
                <div class="user_funtion_horizontal"></div> <!-- 구분선 세로 div -->
                <p class="logout"><a href="/userLogout.do">로그아웃</a></p> <!-- 로그아웃 버튼 -->
            </div>
        </div> 
        <div class="topMenu_bottom"> <!-- 상단 메뉴바에서 하단 메뉴 (소메뉴)-->
            <div class="miniMenu">
                <p class="miniMenu_title">장비 상세정보</p>
            </div>
        </div> 
    </div> <!-- 상단 메뉴바 컨테이너 끝 -->
    <div class="mainContent_container">
        <div class="topContent"> <!-- 메인 컨텐츠 에서 상단 부분-->
            <div class="topTitle"> <!-- 메인 컨텐츠 대제목 -->
                <h1>장비 정보</h1>
            </div>
        </div>
        <div class="contentArea">
                <input type="hidden" id="sessionUser" value="${sessionScope.MEMBER_ID}"> 
                <input type="hidden" id="registerUser" value="${dto.MEMBER_ID}">
                <input type="hidden" id="bnoVal" value="${dto.BNO}">
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
                                <p>${dto.DEVICE_TYPE}</p>
                            </div>
                        </td>
                        <th style="width: 200px;">
                            <div>
                                <p>장치명</p>
                            </div>
                        </th>
                        <td style="width: 294px;">
                            <div>
                                <p>${dto.DEVICE_NAME}</p>
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
                                <p>
                                    <c:if test="${dto.DEVICE_MODEL == 'none_choice'}">
                                        <p style="color:white;-ms-user-select: none; -moz-user-select: -moz-none; -webkit-user-select: none; -khtml-user-select: none; user-select: none;">비어있는 값</p>
                                    </c:if>
                                    <c:if test="${dto.DEVICE_MODEL != 'none_choice'}">
                                        <p>${dto.DEVICE_MODEL}</p>
                                    </c:if>
                                </p>
                            </div>
                        </td>
                        <th>
                            <div>
                                <p>제품 번호</p>
                            </div>
                        </th>
                        <td>
                            <div>
                                <p>${dto.DEVICE_NUMBER}</p>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <div>
                                <p>제조사</p>
                            </div>
                        </th>
                        <td>
                            <div>
                                <p>${dto.PRODUCT_COMPANY}</p>
                            </div>
                        </td>
                        <th>
                            <div>
                                <p>제조일</p>
                            </div>
                        </th>
                        <td>
                            <div>
                                <p>${dto.PRODUCT_DATE}</p>
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
                                <p>${dto.ENGINE_MODEL}</p>
                            </div>
                        </td>
                        <th>
                            <div>
                                <p>엔진 제조사</p>
                            </div>
                        </th>
                        <td>
                            <div>
                                 <p>${dto.ENGINE_PRODUCT_C}</p>
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
                                 <p>${dto.POWER_MODEL}</p>
                            </div>
                        </td>
                        <th>
                            <div>
                                <p>파워 제조사</p>
                            </div>
                        </th>
                        <td>
                            <div>
                                 <p>${dto.POWER_PRODUCT_C}</p>
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
                                 <p>${dto.COOLING_MODEL}</p>
                            </div>
                        </td>
                        <th>
                            <div>
                                <p>쿨링팬 제조사</p>
                            </div>
                        </th>
                        <td>
                            <div>
                                 <p>${dto.COOLING_PRODUCT_C}</p>
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
                                 <p>${dto.PCB_A}</p>
                            </div>
                        </td>
                        <th>
                            <div>
                                <p>PCB A 제조사</p>
                            </div>
                        </th>
                        <td>
                            <div>
                                 <p>${dto.PCB_A_PRODUCT}</p>
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
                                <p>${dto.PCB_B}</p>
                            </div>
                        </td>
                        <th>
                            <div>
                                <p>PCB B 제조사</p>
                            </div>
                        </th>
                        <td>
                            <div>
                                 <p>${dto.PCB_B_PRODUCT}</p>
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
                                 <p>${dto.PCB_C}</p>
                            </div>
                        </td>
                        <th>
                            <div>
                                <p>PCB C 제조사</p>
                            </div>
                        </th>
                        <td>
                            <div>
                                 <p>${dto.PCB_C_PRODUCT}</p>
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
                                 <p>${dto.NX}</p>
                            </div>
                        </td>
                        <th>
                            <div>
                                <p>NX 케이블 제조사</p>
                            </div>
                        </th>
                        <td>
                            <div>
                                 <p>${dto.NX_PRODUCT_C}</p>
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
                                 <p>${dto.PIN_4}</p>
                            </div>
                        </td>
                        <th>
                            <div>
                                <p>4PIN 케이블 제조사</p>
                            </div>
                        </th>
                        <td>
                            <div>
                                <p>${dto.PIN_4_PRODUCT_C}</p>
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
                                 <p>${dto.PIN_5}</p>
                            </div>
                        </td>
                        <th>
                            <div>
                                <p>5PIN 케이블 제조사</p>
                            </div>
                        </th>
                        <td>
                            <div>
                                 <p>${dto.PIN_5_PRODUCT_C}</p>
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
                                 <p>${dto.PIN_22}</p>
                            </div>
                        </td>
                        <th>
                            <div>
                                <p>22PIN 케이블 제조사</p>
                            </div>
                        </th>
                        <td>
                            <div>
                                <p>${dto.PIN_22_PRODUCT_C}</p>
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
                                 <p>${dto.SCREEN_MODEL}</p>
                            </div>
                        </td>
                        <th>
                            <div>
                                <p>스크린 제조사</p>
                            </div>
                        </th>
                        <td>
                            <div>
                                 <p>${dto.SCREEN_PRODUCT_C}</p>
                            </div>
                        </td>
                    </tr>
                    </c:if>
                </table>
        </div>
        <div class="buttonArea">
            <div class="leftButton">
                <div id="cancleButton" class="cancleButton">취소</div>
            </div>
            <div class="rightButton">
                <div id="updateButton" class="updateButton">수정</div>
                <div id="deleteButton" class="deleteButton">삭제</div>
            </div>
        </div>
    </div>

    <script>
    var bnoVal = $('#bnoVal').val();
    var goUpdate = '/go_update_device.do?BNO=' + bnoVal;
    var goDelete = '/delete_device.do?BNO=' + bnoVal;

    var nowUser = $('#sessionUser').val();
    var RegUser = $('#registerUser').val();

    $('#cancleButton').on('click', function(){
        location.href='/home.do';
    });

    $('#updateButton').on('click', function(){
        if(nowUser != RegUser){
            alert('본인이 등록한 장비만 수정할 수 있습니다.');
        } else {
            location.href= goUpdate;
        }
    });

    $('#deleteButton').on('click', function(){
        if(nowUser != RegUser){
            alert('본인이 등록한 장비만 삭제할 수 있습니다.');
        } else {
            var checkDelete = confirm('해당 장비를 정말로 삭제하시겠습니까?');
            if(checkDelete) {
                location.href= goDelete;
            } else {
                return false;
            }
        }
    });
    
    $(document).ready(function(){
    	var deviceName = $('#DEVICE_NAME').val();
    	
    	if(deviceName == "CUBE") {
    		$('.contentArea').css('height','auto');
    		$('.contentArea').css('margin-bottom','3%');
    	}
    	
    	$('.logo_div').on('click', function(){
     		location.href='/home.do';
     	});
    });
    </script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/customer/view.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <!-- jQuery UI CSS 파일 import : DatePicker 사용을 위함 -->
        <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <!-- jQuery UI 라이브러리 파일 import : DatePicker 사용을 위함 -->
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
        <!-- jQuery 한글 언어 파일 import : DatePicker 사용을 위함 -->
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
    <title>고객사 관리</title>
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
                <p class="miniMenu_title">고객사 상세정보</p>
            </div>
        </div> 
    </div> <!-- 상단 메뉴바 컨테이너 끝 -->
    <div class="mainContent_container">
        <div class="topContent"> <!-- 메인 컨텐츠 에서 상단 부분-->
            <div class="topTitle"> <!-- 메인 컨텐츠 대제목 -->
                <h1>고객사 정보</h1>
            </div>
        </div>
        <div class="contentArea">
                <input type="hidden" id="sessionUser" value="${sessionScope.MEMBER_ID}"> 
                <input type="hidden" id="registerUser" value="${dto.MEMBER_ID}">
                <input type="hidden" id="bnoVal" value="${dto.BNO}">
                <table class="contentTable">
                    <tr>
                        <th style="width: 220px;">
                            <div>
                                <p>고객사</p>
                            </div>
                        </th>
                        <td colspan="3">
                            <div>
                                <p class="pStyle">${dto.CUSTOMER_COMPANY}</p>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th style="width: 184px;">
                            <div>
                                <p>담당자</p>
                            </div>
                        </th>
                        <td>
                            <div>
                                <p class="pStyle">${dto.CUSTOMER_MANAGER}</p>
                            </div>
                        </td>
                        <th th style="width: 184px;">
                            <div>
                                <p>담당자 연락처</p>
                            </div>
                        </th>
                        <td>
                            <div>
                                <p class="pStyle">${dto.CUSTOMER_MAN_TEL}</p>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <div>
                                <p>긴급 담당자</p>
                            </div>
                        </th>
                        <td>
                            <div>
                                <p class="pStyle">${dto.EMG_MANAGER}</p>
                            </div>
                        </td>
                        <th>
                            <div>
                                <p>긴급 담당자 연락처</p>
                            </div>
                        </th>
                        <td>
                            <div>
                                <p class="pStyle">${dto.EMG_MAN_TEL}</p>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <div>
                                <p>고객사 주소</p>
                            </div>
                        </th>
                        <td colspan="3">
                            <div>
                                <p style="width: 764px; margin-left: 20px;">${dto.CUSTOMER_ADD}</p>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <div>
                                <p>메모</p>
                            </div>
                        </th>
                        <td colspan="3">
                            <div>
                            <input type="hidden" value="${dto.CUSTOMER_MEMO}" id="hideMemo">
                                <p id="showMemo" style="margin-left: 20px;"></p>
                            </div>
                        </td>
                    </tr>
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
    var goUpdate = '/go_update_customer.do?BNO=' + bnoVal;
    var goDelete = '/delete_customer.do?BNO=' + bnoVal;

    var nowUser = $('#sessionUser').val();
    var RegUser = $('#registerUser').val();

    $('#cancleButton').on('click', function(){
        location.href='/customer.do';
    });

    $('#updateButton').on('click', function(){
        if(nowUser != RegUser){
            alert('본인이 등록한 고객만 수정할 수 있습니다.');
        } else {
            location.href= goUpdate;
        }
    });

    $('#deleteButton').on('click', function(){
        if(nowUser != RegUser){
            alert('본인이 등록한 고객만 삭제할 수 있습니다.');
        } else {
            var checkDelete = confirm('해당 고객사를 정말로 삭제하시겠습니까?');
            if(checkDelete) {
                location.href= goDelete;
            } else {
                return false;
            }
        }
    });
    
    
    function convertBR(text) {
    	return text.replace(/<br>/g, '\r\n');
    }
    
    $(document).ready(function(){
    	var hideMemo = $('#hideMemo').val();
    	var covertText = convertBR(hideMemo);
    	
    	$('#showMemo').text(covertText);
    	
    	$('.logo_div').on('click', function(){
     		location.href='/home.do';
     	});
    });
    </script>
</body>
</html>
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
            <div class="service_modal">
            </div>
            <input type="hidden" id="BNO" value="${dto.BNO}">
            <input type="hidden" id="INSPECTION_ID" value="${INSPECTION_ID}">
            <input type="hidden" id="LIST_TYPE" value="${listType}">
			<input type="hidden" id="CONTRACT_TYPE" value="${contractType}">
            <div class="buttonArea">
                <div id="beforeButton" class="beforeButton">이전</div>
                <div id="nextButton" class="insertButton">다음</div>
                <div id="cancleButton" class="cancleButton">취소</div>
                <div id="updateButton" class="updateButton">수정</div>
                <div id="deleteButton" class="deleteButton">삭제</div>
            </div>
        </div>

        <script>
            $(document).ready(function(){
                loadPage();
                
            });

            function loadPage(){ // 페이지 로드 후 제일 먼저 실행 되는 함수
                $('#change_title').text("유지보수 상세 정보");
                $('#beforeButton').hide();
                $('.service_modal').hide();
            };

            function removeLoad(){
                $('.service_modal').hide();
                $('.contentArea').show();
                $('#nextButton').show;
            }

            function getBackStyle(){
                $('#beforeButton').hide();
                $('#change_title').text("유지보수 상세 정보");
                $('#nextButton').show();
            }

            $('#nextButton').on('click',function(){

                $('.contentArea').hide();
                $('#change_title').empty(); // 원래 요소들(상세 정보) 비우기

                $('#change_title').text("점검 리스트 상세 정보");
                $('#beforeButton').show();
                $('#nextButton').hide();
                
                var ino = $('#INSPECTION_ID').val();
                var listType = $('#LIST_TYPE').val();
                
                var loadService = '/serviceLoad.do?INO=' + ino;
                var loadResult = '/resultLoad.do?INO=' + ino;
                
                if(listType == "service") {
                	$('.service_modal').load(loadService);
                    $('.service_modal').show();	
                } else {
                	$('.service_modal').load(loadResult);
                    $('.service_modal').show();
                }

            });

            $('#beforeButton').on('click',function(){
                    removeLoad(); // 로드 제거
                    getBackStyle();
            });
	
            
            // 수정 버튼 눌렀을 때
            $('#updateButton').on('click', function(){
            	var ino = $('#INSPECTION_ID').val();
            	location.href='/updateList.do?INO='+ino;
            });
            
            // 삭제 버튼 눌렀을 때
            $('#deleteButton').on('click', function(){
            	var deleteCheck = confirm("점검 리스트를 정말 삭제하시겠습니까?");
            	var ino = $('#INSPECTION_ID').val();
            	
            	if(deleteCheck) {
            		location.href='/deleteList.do?INO='+ino;
            	} else {
            		return false;
            	}
            });
            
            
            // 취소 버튼 눌렀을 때
            $('#cancleButton').on('click', function(){
            	history.back();
            });
            
            $('.logo_img').on('click', function(){
         		location.href='/home.do';
         	});
            
            $('.logo_div').on('click', function(){
         		location.href='/home.do';
         	});
        </script>
    </body>
</html>
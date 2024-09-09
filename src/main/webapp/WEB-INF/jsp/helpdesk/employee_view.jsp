<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/helpdesk/employee_view.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <title>Help Desk</title>
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
                    <p class="miniMenu_title"><a style="color:black;" href="/helpdeskEmp.do">Help Desk</a></p>
                </div>
                <div class="miniMenu_n">
                    <p class="miniMenu_title"><a style="color:black;" href="/myAnswer.do">내 답변 보기</a></p>
                </div>
            </div>  
        </div> <!-- 상단 메뉴바 컨테이너 끝 -->
        <div class="mainContent_container">
            <div class="topContent"> <!-- 메인 컨텐츠 에서 상단 부분-->
                <div class="topTitle"> <!-- 메인 컨텐츠 대제목 -->
                    <h1>문의 상세 정보</h1>
                </div>
            </div>
            <div class="contentArea">
                <input type="hidden" id="sessionUser" value="${sessionScope.MEMBER_ID}"> 
                <input type="hidden" id="registerUser" value="${dto.MEMBER_ID}">
                <input type="hidden" id="bnoVal" value="${dto.BNO}">
                <input type="hidden" id="answer" value="${dto.ANSWER}">
                    <table id="main_table" class="contentTable">
                        <tr>
                            <th style="width: 250px;">
                                <div> 
                                    <p>제목</p>
                                </div>
                            </th>
                            <td colspan="3">
                                <div>
                                    <p style="margin-left: 20px;">${dto.HELP_TITLE}</p>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <div>
                                    <p>작성자</p>
                                </div>
                            </th>
                            <td style="width:218px;">
                                <div>
                                    <p style="margin-left: 20px;">${dto.HELP_WRITER}</p>
                                </div>
                            </td>
                            <th style="width: 250px;">
                                <div>
                                    <p>작성일</p>
                                </div>
                            </th>
                            <td>    
                                <div>
                                    <p>${dto.REG_DATE}</p>
                                </div>
                            </td>
                        </tr>
                        <c:if test="${not empty dto.ANSWER}">
                            <tr>
                                <th>
                                    <div>
                                        <p>답변자</p>
                                    </div>
                                </th>
                                <td>
                                    <div>
                                        <p style="margin-left: 20px;">${dto.ANSWER}</p>
                                    </div>
                                </td>
                                <th style="width: 250px;">
                                    <div>
                                        <p>답변일</p>
                                    </div>
                                </th>
                                <td>    
                                    <div>
                                        <p>${dto.REP_DATE}</p>
                                    </div>
                                </td>
                            </tr>
                        </c:if>
                        <tr>
                            <th>
                                <div>
                                    <p>문의 카테고리</p>
                                </div>
                            </th>
                            <td>
                                <div style="margin-left: 20px;">
                        			<c:if test="${dto.CATEGORY eq '0'}">
                        					견적 문의
                        			</c:if>
                        			<c:if test="${dto.CATEGORY eq '1'}">
                        					유지 보수 문의
                        			</c:if>
                        			<c:if test="${dto.CATEGORY eq '2'}">
                        					제품 손상 / AS 문의
                        			</c:if>
                        		</div>
                            </td>
                            <th style="width: 250px;">
                                <div>
                                    <p>고객사</p>
                                </div>
                            </th>
                            <td>    
                                <div>
                                    <p>${dto.WRITER_COMPANY}</p>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <div>
                                    <p>문의 내용</p>
                                </div>
                            </th>
                            <td colspan="3">
                                <div>
                                    <input type="hidden" value="${dto.HELP_CONTENT}" id="hideMemo">
                                <p id="showMemo" style="margin-left: 20px;"></p>
                                </div>
                            </td>
                        </tr>
                        <c:if test="${not empty dto.ANSWER}">
                            <tr>
                                <th>
                                    <div>
                                        <p>답변 내용</p>
                                    </div>
                                </th>
                                <td colspan="3">
                                    <div>
                                        <input type="hidden" value="${dto.ANSWER_CONTENT}" id="hideMemo2">
                                    <p id="showMemo2" style="margin-left: 20px;"></p>
                                    </div>
                                </td>
                            </tr>
                        </c:if>
                    </table>
                <div class="buttonArea">
                    <div class="leftButton">
                        <div id="cancleButton" class="cancleButton">취소</div>
                    </div>
                    <div class="rightButton">
                    	<c:if test="${not empty dto.ANSWER}">
                        	<div id="updateButton" class="updateButton">답변 수정</div>
                        	<div id="deleteButton" class="deleteButton">답변 삭제</div>
                        </c:if>
                        <c:if test="${empty dto.ANSWER}">
                        	<div id="insertButton" class="insertButton">답변 등록</div>
                        </c:if>
                    </div>
                </div>
            </div>
        </div>
        
        <script>
            var bnoVal = $('#bnoVal').val();
    		var goInsert = '/go_insert_helpDeskEmp.do?BNO='+ bnoVal;
    		var goDelete = '/delete_helpdeskEmp.do?BNO=' + bnoVal;
			var goUpdate = '/go_update_helpDeskEmp.do?BNO=' + bnoVal;
			
    		var nowUser = $('#sessionUser').val();
    		var RegUser = $('#registerUser').val();

    		$('#cancleButton').on('click', function(){
        		history.back();
    		});

    		$('#insertButton').on('click', function(){
        		location.href= goInsert;
    		});

    		$('#deleteButton').on('click', function(){
       		    var checkDelete = confirm('해당 답변을 정말로 삭제하시겠습니까?');
            	if(checkDelete) {
                	location.href= goDelete;
            	} else {
                	return false;
            	}
    		});
            
    		$('#updateButton').on('click', function(){
    			location.href = goUpdate;	
    		});
    		
            function convertBR(text) {
            	return text.replace(/<br>/g, '\r\n');
            }
            
            $(document).ready(function(){
            	var hideMemo = $('#hideMemo').val();
            	var covertText = convertBR(hideMemo);
            	
            	$('#showMemo').text(covertText);

                var hideMemo = $('#hideMemo2').val();
            	var covertText = convertBR(hideMemo);
            	
            	$('#showMemo2').text(covertText);
            	
                $('.logo_img').on('click', function(){
             		location.href='/home.do';
             	});
                
                $('.logo_div').on('click', function(){
                	console.log("클릭");
             		location.href='/home.do';
             	});
            });
        </script>
    </body>
</html>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>
    <!-- 로그인 화면 css 파일 불러오기 -->
    <link rel="stylesheet" href="/css/login.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<c:if test="${msg == 'fail'}">
		<script>
			alert("로그인 정보가 일치하지 않습니다. 다시 로그인을 시도하세요.");
		</script>
	</c:if>
	<!-- index.jsp -->
    <!-- 로그인 박스 배경화면 및 내부 요소 정렬 div -->
    <div class="login_box_background">
        <!-- 로그인 대제목 div -->
        <div class="login_title_div">
            <h1 class="login_title">Login</h1>
        </div>
        <!-- 로그인 대제목 div 끝 -->

        <!-- 로그인 input 박스 div -->
        <form name="login_form" method="post" >
            <div class="login_input_div">
                <input type="text" placeholder="아이디" class="login_input" id="MEMBER_ID" name="MEMBER_ID">
                <input type="password" placeholder="비밀번호" class="password_input" id="MEMBER_PW" name="MEMBER_PW">
            </div>
        </form>
        <!-- 로그인 input 박스 div 끝 -->

        <!-- 로그인 버튼 div -->
        <div class="login_button_div">
            <button type="submit" id="login_button" class="login_button">로그인</button>
        </div>
        <!-- 로그인 버튼 div 끝 -->

        <!-- 소메뉴 div -->
        <div class="mini_menu_div">
            <p class="mini_menu"><a href="#">아이디/비밀번호 찾기</a> | <a href="/go_join.do">회원가입</a></p>
        </div>
    </div>
    
    <script>
    	
    	$(document).ready(function(){
    		$("#login_button").click(function(){
    			
    			var MEMBER_ID = $("#MEMBER_ID").val();
    			var MEMBER_PW = $("#MEMBER_PW").val();
    			
    			if(MEMBER_ID == "") {
    				alert("아이디를 입력하세요");
    				$("#member_id").focus();
    				return;
    			}
    			if(MEMBER_PW == ""){
    				alert("비밀번호를 입력하세요");
    				$("#member_pw").focus();
    				return;
    			}
    			
    			document.login_form.action="/userLogin.do";
    			document.login_form.submit();
    		})
    	});
    </script>
</body>
</html>
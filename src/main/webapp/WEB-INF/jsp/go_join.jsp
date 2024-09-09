<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <link rel="stylesheet" href="/css/join.css">
</head>
<body>
<div class="join_choice_background">
        <!-- 일반 사용자 선택지 div -->
        <div class="normal_choice">
            <img class="normal_choice_image" src="/images/employee.svg">
            <h2><a href="/go_normal.do">일반 사용자 회원 가입하기 ></a></h2>
        </div>
        <!-- 일반 사용자 선택지 div 끝-->

        <!-- 세로 구분선  div -->
        <div class="vertical_line"></div>
        <!-- 세로 구분선  div 끝 -->

        <!-- 내부 사용자 선택지 div -->
        <div class="employee_choice">
            <img class="employee_choice_image" src="/images/normal.svg">
            <h2><a href="/go_employee.do">내부 사용자 회원 가입하기 ></a></h2>
        </div>
        <!-- 내부 사용자 선택지 div 끝-->
    </div>
</body>
</html>
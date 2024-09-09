<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <link rel="stylesheet" href="/css/normal.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<!-- 스크롤 버튼 구현 -->
    <!-- <button class="scroll_button"><img src="/image/down.svg"></button> -->

    <div class="join_normal_background">
        <!-- 일반 사용자 회원가입 대제목 -->
        <div class="join_normal_title">
            <h1>Create Account</h1>
        </div>
        <!-- 일반 사용자 회원가입 대제목 끝 -->

        <!-- 일반 사용자 회원가입 소제목 -->
        <div class="join_normal_mini_title">
            <div class="mini_title_1">
                <p>회원 가입을 통해, 하이브 시스템의 유지보수 기술 지원을 경험해 보세요</p>
            </div>
            <div class="mini_title_2">
                <p style="color:red;">- 아래 항목들은 모두 필수 입력 사항입니다</p>
            </div>
        </div>
        <!-- 일반 사용자 회원가입 소제목 끝 -->

        <!-- 가로 구분선 div -->
        <div class="hrizontal_line"></div>
        <!-- 가로 구분선 div 끝 -->
        <form name="join_form" method="post">
        <!-- 회원가입 정보 입력란 시작 -->
        <div class="join_input_div">
            <!-- 아이디 입력란 -->
            <input type="hidden" id="MEMBER_DEPARTMENT" name="MEMBER_DEPARTMENT" value="NOT"> <!-- 일반 사용자이기 때문에 내부 사용자 전용 부서에는 NOT을 넣는다  -->
            <input type="hidden" id="MEMBER_TYPE" name="MEMBER_TYPE" value="NOR">
            <div class="id_input_div">
                <p class="input_p">아이디</p>
                <div class="id_input_flex">
                    <input type="text" placeholder="아이디 입력(영어/숫자 8~15자)" class="id_input" id="MEMBER_ID" name="MEMBER_ID">
                    <button id="duplicate_button" class="duplicate_button">중복 검사</button>
                </div>
            </div>

            <!-- 비밀번호 입력란 -->
            <div class="pw_input_div">
                <p class="input_p">비밀번호</p>
                <input type="password" placeholder="비밀번호 입력(한글 제외 8~15자)" class="password_input" id="MEMBER_PW" name="MEMBER_PW">
            </div>

            <!-- 비밀번호 재입력란-->
            <div class="pw_re_input_div">
                <p class="input_p">비밀번호 확인</p> <p id="checker">입력하신 비밀번호와 일치하지 않습니다.</p>
                <input type="password" placeholder="비밀번호 재입력" id="password_re_input" class="password_re_input">
            </div>

            <!-- 이름 입력란 -->
            <div class="name_input_div">
                <p class="input_p">이름</p>
                <input type="text" placeholder="이름 입력" id="MEMBER_NAME" class="name_input" name="MEMBER_NAME">
            </div>

            <!-- 휴대전화 입력란 -->
            <div class="phone_input_div">
                <p class="input_p">휴대전화</p>
                <input type="text" placeholder="'-' 제외, 휴대전화 입력" class="phone_input" name="MEMBER_TEL" id="MEMBER_TEL">
            </div>

            <!-- 회사명/기관명 입력란-->
            <div class="company_input_div">
                <p class="input_p">회사명/기관명</p>
                <input type="text" placeholder="회사명 / 기관명 입력" class="company_input" name="MEMBER_COMPANY" id="MEMBER_COMPANY">
            </div>

            <!-- 이메일 주소 입력란 -->
            <div class="email_input_div">
                <p class="input_p">이메일</p>
                <div class="email_input_flex">
                    <input type="text" placeholder="이메일 주소 입력" class="email_input" name="MEMBER_MAIL" id="MEMBER_MAIL">
                    
                </div>
            </div>
        </div>
        <!-- 회원가입 정보 입력란 끝 -->
        </form>

        <!-- 회원가입 버튼 -->
        <div class="join_button_div">
            <button id="join_button" class="join_button">회원가입</button>
        </div>
        <!-- 회원가입 버튼 끝 -->


        <!-- 가로 구분선 div -->
        <div class="hrizontal_line_2"></div>
        <!-- 가로 구분선 div 끝 -->

        <div class="mini_menu">
            <p style="color:#999999;"><a href="go_join.do" class="a_1">이전 화면으로 돌아가기</a> | <a href="index.do" class="a_2">로그인 화면으로 돌아가기</a></p>
        </div>
    </div>

    <script>
    // 전역 변수들
       var checkState = false ; // 중복체크 확인 여부 - 기본 값 false(중복체크 X)
       var pwCheckState = false ; // 비밀번호 확인 여부 - 기본 값 false(일치하지 X)

       $(document).ready(function(){

           // 01. 아이디 중복체크 확인하기
           $("#duplicate_button").on("click", function(e){
               e.preventDefault(); // 중복체크 버튼이 form 내부에 있기 때문에 그냥 전송 되는 일을 막아준다

               var duplicate = $("#MEMBER_ID").val();

               if(duplicate == "" || duplicate.length > 15 || duplicate.length < 8) { //빈값이나 길이가 맞지 않은 상태에서 버튼을 눌렀을 때
                   alert("빈 값 또는 조건에 맞지 않는 길이입니다. 다시 입력 후 중복 확인 해주세요.");
               } else {
                   $.ajax({ // ajax로 데이터 전송 => 유저 테이블 전체 조회
                       url : "idCheck.do",
                       data : { id : duplicate}, // id 라는 변수명에 MEMBER_ID 값을 태워서 보냄
                       success : function(returnId) {
                           if(returnId == "y") { //중복 될 때
                               alert("중복되는 아이디입니다. 다른 아이디로 시도해 주세요.");
                               checkState = false;
                           } else { // 중복되지 않을 때
                               alert("사용 가능한 아이디 입니다.");
                               checkState = true;
                           }
                       },
                       error : function() {
                           alert("알 수 없는 오류가 발생했습니다. 잠시 후 다시 시도해 주세요.");
                       } 
                   });
               }
           });

           // 02. 비밀번호 / 비밀번호 확인 
           $("#password_re_input").on('keyup' , function() {
               var password = $("#MEMBER_PW").val(); // 입력한 비밀번호 값
               var passwordCheck = $("#password_re_input").val(); // 비밀번호 확인 값

               if(password == passwordCheck) {
                   $("#pwCheck").css("display" , "none"); // 비밀번호와 비밀번호 확인 값이 일치하므로 display:none 처리
                   pwCheckState = true;
               } else {
                   $("#pwCheck").css("display" , "block"); // 비밀번호가 일치하지 않기 때문에 display : block 처리
                   pwCheckState = false;
               }
           });

           // 03. 입력 정규식
   		$("#MEMBER_ID").on('blur keyup' , function(){ // ID의 경우 (조건에 맞게 입력 후 중복 확인한 뒤, 아이디를 수정했을 경우를 대비 => 키보드를 다시 누르게 되면 false 처리 됨)
               checkState = false ; // 입력값 변경 시 중복확인 체크 상태 false 처리

               $(this).val($(this).val().replace(/[^a-zA-Z0-9]+/g, '' )); // 영어와 숫자만 입력되도록
           });

           $("#MEMBER_PW").on('blur keyup' , function(){ 
               $(this).val($(this).val().replace(/[ㄱ-ㅎㅏ-ㅣ가-힣\s]/g, '')); // 한글 및 공백 입력 불가능한 정규식
           });

           $("#MEMBER_NAME").on('blur keyup' , function() {
               $(this).val($(this).val().replace(/[^가-힣]/gi, '')); // 한글만 입력되도록 함
           });

           $("#MEMBER_TEL").on('blur keyup' , function() {
               $(this).val($(this).val().replace(/[^\d]/g, '').replace(/(\d{3})(\d{3,4})(\d{4})/, '$1-$2-$3').substring(0, 13)); // 숫자만 입력 & 자동 하이픈 붙이기 기능
           });
           
           // 04. 변수 차단
           $("#MEMBER_ID").on('keyup' , function(){ //중복확인 후 아이디 변경 했을 때 확인 가능
               checkState = false ;
           });

           // 05. 빈값 및 길이 체크 + 데이터 전송 기능
           $("#join_button").click(function(){
               var userId = $("#MEMBER_ID").val();
               var userPw = $("#MEMBER_PW").val();
               var userName = $("#MEMBER_NAME").val();
               var userTel = $("#MEMBER_TEL").val();
               var userMail = $('#MEMBER_MAIL').val();
               var userCompany = $('#MEMBER_COMPANY').val();

               if(userId == "" || userId.length < 8 || userId.length > 15) {

                   alert(" 아이디를 입력하지 않았거나, 길이가 올바르지 않은 아이디입니다. 아이디를 다시 입력해주세요.");
                   $("#MEMBER_ID").focus();

               }else if(checkState == false){

                   alert("중복 확인이 되지 않은 아이디입니다. 중복 확인을 해주세요");

               } else if(!pwCheckState) {

                   alert(" 입력하신 비밀번호와 비밀번호 확인이 일치하지 않습니다. 다시 입력 해 주세요.");
                   $("#password_re_input").focus();

               } else if(userId == "" || userId.length < 8 || userId.length > 15) {

                   alert(" 비밀번호를 입력하지 않았거나, 길이가 올바르지 않은 비밀번호입니다. 비밀번호를 다시 입력해주세요.");
                   $("#MEMBER_PW").focus();

               } else if(userName =="" || userName.length < 2 || userName.length > 6) {

                   alert(" 이름을 입력하지 않았거나, 길이가 올바르지 않은 이름입니다. 이름을 다시 입력해주세요.");
                   $("#MEMBER_NAME").focus();
               
               } else if(userTel == "" || userTel.length < 13 || userTel.length > 13) {

                   alert(" 전화번호를 입력하지 않았거나, 길이가 올바르지 않은 전화번호입니다. 전화번호를 다시 입력해주세요.");
                   $("#MEMBER_TEL").focus();

               } else if(userCompany == "" || userCompany.length < 2 || userCompany.length > 20){
                   alert("회사/기관명을 입력하지 않았거나, 길이가 올바르지 않은 회사/기관명 입니다. 회사/기관명을 다시 입력해주세요.");
                   $('#MEMBER_COMPANY').focus();
               } else if (userMail == "" || userMail.length < 10 || userMail.length > 40) {

                   alert(" 이메일을 입력하지 않았거나, 길이가 올바르지 않은 이메일입니다. 이메일을 다시 입력해주세요.");
                   $('#MEMBER_MAIL').focus();

               } else { //모든 조건을 만족하는 경우 해당 경로로 form 데이터 전송
                   document.join_form.action="/join.do";
                   document.join_form.submit();
               }   
           });
       });
   </script>
</body>
</html>
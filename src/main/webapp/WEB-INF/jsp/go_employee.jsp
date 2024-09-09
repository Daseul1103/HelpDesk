<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <link rel="stylesheet" href="/css/employee.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
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
		<input type="hidden" name="MEMBER_TYPE" value="EMP">
		<input type="hidden" name="MEMBER_COMPANY" value="NOT">
        <!-- 회원가입 정보 입력란 시작 -->
        <div class="join_input_div">
            <!-- 아이디 입력란 -->
            <div class="id_input_div">
                <p class="input_p">아이디</p>
                <div class="id_input_flex">
                    <input type="text" placeholder="아이디 입력(영어/숫자 8~15자)" id="MEMBER_ID" name="MEMBER_ID" class="id_input">
                    <button id="duplicate_button" class="duplicate_button">중복 검사</button>
                </div>
            </div>

            <!-- 비밀번호 입력란 -->
            <div class="pw_input_div">
                <p class="input_p">비밀번호</p>
                <input type="text" placeholder="비밀번호 입력(한글 제외 8~15자)" id="MEMBER_PW" name="MEMBER_PW" class="password_input">
            </div>

            <!-- 비밀번호 재입력란-->
            <div class="pw_re_input_div">
                <p class="input_p">비밀번호 확인</p>
                <p id="pwCheck">입력하신 비밀번호와 다릅니다.</p>
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
                <input type="text" placeholder="'-' 제외, 휴대전화 입력" id="MEMBER_TEL" class="phone_input" name="MEMBER_TEL">
            </div>

            <!-- 회사명/기관명 입력란-->
            <div class="company_input_div">
                <p class="input_p">부서 선택</p>
                <select class="department_select" name="MEMBER_DEPARTMENT" id="MEMBER_DEPARTMENT">
                    <option value="H/W 개발 본부">H/W 개발 본부</option>
                    <option value="S/W 사업 본부 - 솔루션 디자인 팀">S/W 사업 본부 - 솔루션 디자인팀</option>
                    <option value="S/W 사업본부 - 플랫폼 개발팀">S/W 사업 본부 - 플랫폼 개발팀</option>
                    <option value="DX 본부 - DX사업 1팀">DX 본부 - DX사업 1팀</option>
                    <option value="DX 본부 - DX사업 2팀">DX 본부 - DX사업 2팀</option>
                    <option value="DX 본부 - 해외사업 1팀">DX 본부 - 해외사업 1팀</option>
                    <option value="경영 지원 본부 - 구매/총무">경영 지원 본부 - 구매/총무</option>
                    <option value="경영 지원 본부 - 회계/인사">경영 지원 본부 - 회계/인사</option>
                    <option value="클라우드 본부 - DevOps팀">클라우드 본부 - DevOps팀</option>
                    <option value="클라우드 본부 - MSP팀">클라우드 본부 - MSP팀</option>
                    <option value="클라우드 본부 - 사업팀">클라우드 본부 - 사업팀</option>
                    <option value="영업 대표">영업 대표</option>
                    <option value="기술 연구소">기술 연구소</option>
                    <option value="대전 지사">대전 지사</option>
                </select>
            </div>

            <!-- 이메일 주소 입력란 -->
            <div class="email_input_div">
                <p class="input_p">이메일</p>
                <div class="email_input_flex">
                    <input type="text" placeholder="이메일 주소 입력" id="MEMBER_MAIL" class="email_input" name="MEMBER_MAIL">
                </div>
            </div>
        </div>
        </form>
        <!-- 회원가입 정보 입력란 끝 -->
        
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
    
    <script> // 후에 js 파일 따로 만들어서 함수 관리하기 / 일단은 script 태그에 작성

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

            // 03. 실시간 입력 정규식
            $("#MEMBER_ID").on('blur keyup' , function(){ // ID의 경우 (조건에 맞게 입력 후 중복 확인한 뒤, 아이디를 수정했을 경우를 대비 => 키보드를 다시 누르게 되면 false 처리 됨)
                checkState = false ; // 입력값 변경 시 중복확인 체크 상태 false 처리

                $(this).val($(this).val().replace(/[^a-zA-Z0-9]+/g, '' )); // 영어와 숫자만 입력되도록
            });

            $("#MEMBER_PW").on('blur keyup' , function(){ 
                $(this).val($(this).val().replace(/[^\x21-\x7E]/g, '')); // 한글 및 공백 입력 불가능한 정규식
            });

            $("#MEMBER_NAME").on('blur keyup' , function() {
                $(this).val($(this).val().replace(/[^가-힣]/gi, '')); // 한글만 입력되도록 함
            });

            $("#MEMBER_TEL").on('blur keyup' , function() {
                $(this).val($(this).val().replace(/[^\d]/g, '').replace(/(\d{3})(\d{3,4})(\d{4})/, '$1-$2-$3').substring(0, 13)); // 숫자만 입력 & 자동 하이픈 붙이기 기능
            });

            // 04. 빈값 및 길이 체크 + 데이터 전송 기능
            $("#join_button").click(function(){
                var userId = $("#MEMBER_ID").val();
                var userPw = $("#MEMBER_PW").val();
                var userName = $("#MEMBER_NAME").val();
                var userTel = $("#MEMBER_TEL").val();
                var userMail = $('#MEMBER_MAIL').val();

                if(userId == "" || userId < 8 || userId > 15) {

                    alert(" 아이디를 입력하지 않았거나, 길이가 올바르지 않은 아이디입니다. 아이디를 다시 입력해주세요.");
                    $("#MEMBER_ID").focus();

                } else if(checkState == false){

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
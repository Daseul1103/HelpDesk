<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/customer/update.css">
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
                <div class="userImg"> <!-- 유저 이미지 div -->

                </div>
                <p><span style="color: #3366CC;">${sessionScope.MEMBER_NAME}</span> 님 &nbsp 환영합니다. </p> <!-- 로그인 정보 -->
                <div class="user_funtion_horizontal"></div> <!-- 구분선 세로 div -->
                <p class="logout"><a href="/userLogout.do">로그아웃</a></p> <!-- 로그아웃 버튼 -->
            </div>
        </div> 
        <div class="topMenu_bottom"> <!-- 상단 메뉴바에서 하단 메뉴 (소메뉴)-->
            <div class="miniMenu">
                <p class="miniMenu_title">고객사 정보 수정</p>
            </div>
        </div> 
    </div> <!-- 상단 메뉴바 컨테이너 끝 -->
    <div class="mainContent_container">
        <div class="topContent"> <!-- 메인 컨텐츠 에서 상단 부분-->
            <div class="topTitle"> <!-- 메인 컨텐츠 대제목 -->
                <h1>고객사 수정</h1>
                <p><span style="color:red;">*</span> 표시는 필수 입력 사항입니다.</p>
            </div>
        </div>
        <div class="contentArea">
            <form name="updateForm" method="post" action="/update_customer.do">
            <input type="hidden" name="BNO" value="${dto.BNO}">
                <table class="contentTable">
                    <tr>
                        <th style="width: 184px;">
                            <div>
                                <p><span style="color:red;">*</span> 고객사</p>
                            </div>
                        </th>
                        <td colspan="3">
                            <div>
                                <input type="text" maxlength="15" name="CUSTOMER_COMPANY" id="CUSTOMER_COMPANY" style=" width:300px; margin-left: 20px; height: 24px;" value="${dto.CUSTOMER_COMPANY}">
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th style="width: 184px;">
                            <div>
                                <p><span style="color:red;">*</span> 담당자</p>
                            </div>
                        </th>
                        <td>
                            <div>
                                <input type="text" maxlength="10" name="CUSTOMER_MANAGER" id="CUSTOMER_MANAGER" class="inputStyle" value="${dto.CUSTOMER_MANAGER}">
                            </div>
                        </td>
                        <th th style="width: 184px;">
                            <div>
                                <p><span style="color:red;">*</span> 담당자 연락처</p>
                            </div>
                        </th>
                        <td>
                            <div>
                                <input type="text" maxlength="13" name="CUSTOMER_MAN_TEL" id="CUSTOMER_MAN_TEL" class="inputStyle" value="${dto.CUSTOMER_MAN_TEL}">
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
                                <input type="text" maxlength="10" name="EMG_MANAGER" id="EMG_MANAGER" class="inputStyle" value="${dto.EMG_MANAGER}">
                            </div>
                        </td>
                        <th>
                            <div>
                                <p>긴급 담당자 연락처</p>
                            </div>
                        </th>
                        <td>
                            <div>
                                <input type="text" maxlength="13" name="EMG_MAN_TEL" id="EMG_MAN_TEL" class="inputStyle" value="${dto.EMG_MAN_TEL}">
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <div>
                                <p><span style="color:red;">*</span> 고객사 주소</p>
                            </div>
                        </th>
                        <td colspan="3">
                            <div>
                                <input type="text" maxlength="100" name="CUSTOMER_ADD" id="CUSTOMER_ADD" style=" width:715px; margin-left: 20px; height: 24px;" value="${dto.CUSTOMER_ADD}">
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
                                <textarea id="CUSTOMER_MEMO" class="textStyle" wrap="hard" maxlength="200"></textarea> <!-- 여기에 입력하면 -->
                                <input type="hidden" name="CUSTOMER_MEMO" id="sentText"> <!-- 여기로 저장되어 데이터 전송하고 -->
                                <input type="hidden" id="beforeMemo" value="${dto.CUSTOMER_MEMO}"> <!-- 여기에 원래 값 저장해서 불러오게끔 하기 -->
                         
                            </div>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
        <div class="buttonArea">
            <div id="updateButton" class="updateButton">저장</div>
            <div id="cancleButton" class="cancleButton">취소</div>
        </div>
    </div>

    <script>
        var input = $('#CUSTOMER_MEMO');
        var output = $('#sentText');

        /* textarea 개행 문자 처리 */
        function brChange() {
            inputVal = input.val();
            output.val(inputVal.replace(/(?:\r\n|\r|\n)/g,'<br>'));
        }

        function convertBR(text) {
            return text.replace(/<br>/g, '\r\n');
        }
        
        
        $('#cancleButton').on('click', function() {
        	location.href='/customer.do';
        })
        
        $('#updateButton').on('click', function(){
            var company = $('#CUSTOMER_COMPANY').val();
            var manager = $('#CUSTOMER_MANAGER').val();
            var managerTel = $('#CUSTOMER_MAN_TEL').val();
            var companyAdd = $('#CUSTOMER_ADD').val();
            var EmanagerTel = $('#EMG_MAN_TEL').val();
			
            brChange();
            
            if( company == "") {
            	alert("고객사를 입력하지 않았습니다.");
            	$('#CUSTOMER_COMPANY').focus();
            } else if( manager == "") {
            	alert("담당자를 입력하지 않았습니다.");
            	$('#CUSTOMER_MANAGER').focus();
            } else if( managerTel == "") {
            	alert("담당자 연락처를 입력하지 않았습니다.");
            	$('#CUSTOMER_MAN_TEL').focus();
			 } else if(managerTel.length < 13) {
				 alert("담당자 연락처의 길이가 올바르지 않습니다.");
			 } else if(EmanagerTel.length > 1 && EmanagerTel.length < 13) { 
				 alert("긴급 담당자 연락처의 길이가 올바르지 않습니다.");
        	} else if(companyAdd == "") {
            	alert("고객사 주소를 입력하지 않았습니다.");
            	$('#CUSTOMER_ADD').focus();
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

        $(document).ready(function(){
            var hideMemo = $('#beforeMemo').val();
            var covertText = convertBR(hideMemo);
            
            $('#CUSTOMER_MEMO').text(covertText);
        });
        
        
        $("#CUSTOMER_MAN_TEL").on('blur keyup' , function() {
            $(this).val($(this).val().replace(/[^\d]/g, '').replace(/(\d{3})(\d{3,4})(\d{4})/, '$1-$2-$3').substring(0, 13)); // 숫자만 입력 & 자동 하이픈 붙이기 기능
        });
        
        $("#EMG_MAN_TEL").on('blur keyup' , function() {
            $(this).val($(this).val().replace(/[^\d]/g, '').replace(/(\d{3})(\d{3,4})(\d{4})/, '$1-$2-$3').substring(0, 13)); // 숫자만 입력 & 자동 하이픈 붙이기 기능
        });
        
        $('.logo_div').on('click', function(){
     		location.href='/home.do';
     	});
        
        
        $('#CUSTOMER_COMPANY').on('input', function(){
        	var CUSTOMER_COMPANY = $(this).val();
        	CUSTOMER_COMPANY = CUSTOMER_COMPANY.replace(/[^\p{L}\p{N}\s]/gu, '');
        	 $(this).val(CUSTOMER_COMPANY);
        });
        
        $('#CUSTOMER_MANAGER').on('input', function(){
        	var CUSTOMER_MANAGER= $(this).val();
        	CUSTOMER_MANAGER= CUSTOMER_MANAGER.replace(/[^ㄱ-ㅎ가-힣a-zA-Z]/g, '');
        	 $(this).val(CUSTOMER_MANAGER);
        });
        
       $('#EMG_MANAGER').on('input', function(){
        	var EMG_MANAGER= $(this).val();
        	EMG_MANAGER= EMG_MANAGER.replace(/[^ㄱ-ㅎ가-힣a-zA-Z]/g, '');ㄴ
        	 $(this).val(EMG_MANAGER);
        });
        
        $('#CUSTOMER_MAN_TEL').on('input', function(){
        	var CUSTOMER_MAN_TEL= $(this).val();
        	CUSTOMER_MAN_TEL= CUSTOMER_MAN_TEL.replace(/[^0-9]/g, '');
        	 $(this).val(CUSTOMER_MAN_TEL);
        });
        
        $('#EMG_MAN_TEL').on('input', function(){
        	var EMG_MAN_TEL= $(this).val();
        	EMG_MAN_TEL= EMG_MAN_TEL.replace(/[^0-9]/g, '');
        	 $(this).val(EMG_MAN_TEL);
        }); 
        
    </script>
</body>
</html>
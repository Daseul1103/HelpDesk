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
                <p class="miniMenu_title">고객사 등록</p>
            </div>
        </div> 
    </div> <!-- 상단 메뉴바 컨테이너 끝 -->
    <div class="mainContent_container">
        <div class="topContent"> <!-- 메인 컨텐츠 에서 상단 부분-->
            <div class="topTitle"> <!-- 메인 컨텐츠 대제목 -->
                <h1>고객사 등록</h1>
                <p><span style="color:red;">*</span> 표시는 필수 입력 사항입니다.</p>
            </div>
        </div>
        <div class="contentArea">
            <form name="insertForm" method="post" action="/insert_customer.do">
                <table class="contentTable">
                    <tr>
                        <th style="width: 184px;">
                            <div>
                                <p><span style="color:red;">*</span> 고객사</p>
                            </div>
                        </th>
                        <td colspan="3">
                            <div>
                                <input type="text" name="CUSTOMER_COMPANY" id="CUSTOMER_COMPANY" style=" width:300px; margin-left: 20px; height: 24px;" maxlength="15">
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
                                <input type="text" name="CUSTOMER_MANAGER" id="CUSTOMER_MANAGER" class="inputStyle" maxlength="10"style="margin-left: 20px;width: 300px;">
                            </div>
                        </td>
                        <th style="width: 184px;">
                            <div>
                                <p><span style="color:red;">*</span> 담당자 연락처</p>
                            </div>
                        </th>
                        <td>
                            <div>
                                <input type="text" name="CUSTOMER_MAN_TEL" id="CUSTOMER_MAN_TEL" class="inputStyle" maxlength="13" style="margin-left: 20px;width: 300px;">
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
                                <input type="text" name="EMG_MANAGER" id="EMG_MANAGER" class="inputStyle" maxlength="10" style="margin-left: 20px;width: 300px;">
                            </div>
                        </td>
                        <th>
                            <div>
                                <p>긴급 담당자 연락처</p>
                            </div>
                        </th>
                        <td>
                            <div>
                                <input type="text" name="EMG_MAN_TEL" id="EMG_MAN_TEL" class="inputStyle" maxlength="13" style="margin-left: 20px;width: 300px;">
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
                                <input type="text" name="CUSTOMER_ADD" id="CUSTOMER_ADD" style=" width:850px; margin-left: 20px; height: 24px;" maxlength="100">
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
                                <textarea id="CUSTOMER_MEMO" class="textStyle" wrap="hard" maxlength="200" style="width:850px; margin-left:20px; outline:none; resize:none;"></textarea>
                                <input type="hidden" name="CUSTOMER_MEMO" id="sentText">
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

        var input = $('#CUSTOMER_MEMO');
        var output = $('#sentText');
      
        /* textarea 개행 문자 처리 */
        function brChange() {
            inputVal = input.val();
            output.val(inputVal.replace(/(?:\r\n|\r|\n)/g,'<br>'));
        }

        // 취소 버튼 클릭 시 이전 화면으로 이동 (목록)
            $('#cancleButton').on('click', function(){
                location.href='/customer.do';
            });

            // 등록 버튼 클릭 시 유효성 검사 후 등록 or 반환
            $('#insertButton').on('click',function(){
                var company = $('#CUSTOMER_COMPANY').val();
                var manager = $('#CUSTOMER_MANAGER').val();
                var managerTel = $('#CUSTOMER_MAN_TEL').val();
                var EmanagerTel = $('#EMG_MAN_TEL').val();
                var customerAdd = $('#CUSTOMER_ADD').val();
                
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
            	} else if( customerAdd == "") {
                	alert("고객사 주소를 입력하지 않았습니다.");
                	$('#CUSTOMER_ADD').focus();
                } else {
                	 document.insertForm.submit();	
                }
                
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
            	EMG_MANAGER= EMG_MANAGER.replace(/[^ㄱ-ㅎ가-힣a-zA-Z]/g, '');
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
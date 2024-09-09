<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/helpdesk/normal_insert.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <!-- jQuery UI CSS 파일 import : DatePicker 사용을 위함 -->
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <!-- jQuery UI 라이브러리 파일 import : DatePicker 사용을 위함 -->
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
    <!-- jQuery 한글 언어 파일 import : DatePicker 사용을 위함 -->
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
    <link rel="stylesheet" href="https://cdn.datatables.net/2.1.2/css/jquery.dataTables.min.css">
    <script src="//cdn.datatables.net/2.1.2/js/dataTables.min.js"></script>
    <title>Help Desk 관리</title>
</head>
<body>
    <div class="topMenu_comtatiner"> <!-- 상단 메뉴바 컨테이너 시작 -->
        <div class="topMenu_top"> <!-- 상단 메뉴바에서 상단 메뉴 (홈페이지 로고 및 대메뉴 , 로그인/로그아웃)-->
            <div class="homepageLogo"> <!-- 홈페이지 로고 div -->
                <div class="logo_div"></div>
            </div>
            <div class="bigMenu"> <!-- 대메뉴 div -->
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
                <p class="miniMenu_title"><a style="color:white;" href="/helpdesk.do">Help Desk</a></p>
            </div>
            <div class="miniMenu_n">
                <p class="miniMenu_title"><a>내 문의 보기</a></p>
            </div>
        </div> 
    </div> <!-- 상단 메뉴바 컨테이너 끝 -->
    <div class="mainContent_container">
        <div class="topContent"> <!-- 메인 컨텐츠 에서 상단 부분-->
            <div class="topTitle"> <!-- 메인 컨텐츠 대제목 -->
                <h1>문의 등록</h1>
            </div>
        </div>
        <div class="contentArea">
            <form name="insertForm" method="post" action="/insert_helpdesk.do">
                <table id="main_table" class="contentTable">
                    <tr>
                        <th style="width:300px;">
                            <div> 
                                <p><span style="color: red;">*</span> 제목</p>
                            </div>
                        </th>
                        <td style="width:700px;">
                            <div>
                                <input type="text" style="width:670px;" name="HELP_TITLE" id="HELP_TITLE" maxlength="50">
                            </div>
                        </td>
                    </tr>
                    <tr>
                    	<th>
                    		<div>
                    			<p><span style="color: red;">*</span>문의 카테고리</p>
                    		</div>
                    	</th>
                    	<td>
                    		<div>
                                <select name="CATEGORY" style="width: 200px;height: 30px;">
                                	<option value="0">견적 문의</option>
                                	<option value="1">유지보수</option>
                                	<option value="2">제품 손상 및 AS 문의</option>
                                </select>
                            </div>
                    	</td>
                    </tr>
                    <tr>
                        <th>
                            <div>
                                <p><span style="color: red;">*</span> 문의 내용</p>
                            </div>
                        </th>
                        <td>
                            <div>
                                <textarea id="HELP_CONTENT" rows="10" style="width: 672px;" wrap="hard" maxlength="500"></textarea>
                                <input type="hidden" name="HELP_CONTENT" id="sentText">
                            </div>
                        </td>
                    </tr>
                </table>
                <input type="hidden" name="HELP_WRITER" value="${sessionScope.MEMBER_NAME}"> <!-- 작성자 -->
                <input type="hidden" name="WRITER_TEL" value="${sessionScope.MEMBER_TEL}">
                <input type="hidden" name="WRITER_COMPANY" value="${sessionScope.MEMBER_COMPANY}">
            </form>
            <div class="buttonArea">
                <div id="insertButton" class="insertButton">등록</div>
                <div id="cancleButton" class="cancleButton">취소</div>
            </div>
        </div>
    </div>

    <script>
    $(document).ready(function() {
        var input = $('#HELP_CONTENT');
        var output = $('#sentText');

        // textarea 개행 문자 처리 함수
        function brChange() {
            var inputVal = input.val();
            output.val(inputVal.replace(/(?:\r\n|\r|\n)/g, '<br>'));
        }

        $('#insertButton').on('click', function() {
            var title = $('#HELP_TITLE').val();
            var content = $('#HELP_CONTENT').val();
            
            // 개행 문자 처리 및 숨겨진 필드에 저장
            brChange();

            if (title === "") {
                alert('제목을 입력해 주세요');
                $('#HELP_TITLE').focus();
            } else if (content === "") {
                alert('내용을 입력해 주세요');
                $('#HELP_CONTENT').focus();
            } else {
                $('form[name="insertForm"]').submit();  
            }
        });

        $('#cancleButton').on('click', function() {
            location.href='/myQuestion.do';
        });

        // 텍스트 영역의 높이를 자동으로 조절하는 함수
        function handleResizeHeight() {
            var $textarea = $('#HELP_CONTENT');
            $textarea.css('height', 'auto'); // 높이 초기화
            $textarea.css('height', $textarea[0].scrollHeight + 'px'); // 높이 조정
        }

        // 텍스트 영역의 입력이나 콘텐츠 변경 시 높이 조절
        $('#HELP_CONTENT').on('input', handleResizeHeight);

        // 페이지 로드 시 초기 높이 조절
        handleResizeHeight();

        // 추가된 기능들...
    });
</script>

</body>
</html>

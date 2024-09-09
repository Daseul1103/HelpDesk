<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/home.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/2.1.2/css/jquery.dataTables.min.css"> <!-- dataTable CSS -->
    <title>하이브 시스템 유지보수</title>

    <!-- JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script> <!-- 기본 js -->
    <script src="//cdn.datatables.net/2.1.2/js/dataTables.min.js"></script> <!-- dataTable JS -->
</head>
<body>
    <div class="body-wrap">
        <div class="menu-wrap">
            <div class="menu">
                <div class="logo-wrap">
                    <div class="logo_img"></div>
                </div>
                <div class="menu_container">
                    <p><a href="/home.do">장비 관리</a></p>
                    <p><a href="/customer.do">고객사 관리</a></p>
                    <p><a href="/project.do">프로젝트 관리</a></p>
                    <p><a href="/maintenance.do">유지보수 관리</a></p>
                    <p><a href="/helpDeskEmp.do">Help Desk</a></p>
                </div>
                <div class="user-wrap">
                    <div class="userImg"> <!-- 유저 이미지 div -->

                    </div>
                    <p><span style="color: #3366CC;">${sessionScope.MEMBER_NAME}</span> 님 &nbsp 환영합니다. </p> <!-- 로그인 정보 -->
                    <div class="user_funtion_horizontal"></div> <!-- 구분선 세로 div -->
                    <p class="logout"><a href="/userLogout.do">로그아웃</a></p> <!-- 로그아웃 버튼 -->
                </div>
            </div>
            <div class="mini-menu">
                <div class="now-mini_menu">장비 관리</div> <!-- 현재 위치의 메뉴 -->
            </div>
        </div> <!-- 상단 메뉴바 wrap -->
        <div class="content-wrap">
            <div class="contentTitle_container">
                <div class="contentTitle-wrap">
                    <h1>장비 목록</h1>
                </div>
                <div class="search-wrap">
                    <form name="searchForm" method="post">
                        <div class="search_container">
                            <select name="searchOption">
                                <option value="all" <c:out value="${map.searchOption == 'all' ? 'selected' : ''}"/>>전체</option>
                                <option value="DEVICE_TYPE" <c:out value="${map.searchOption == 'DEVICE_TYPE' ? 'selected' : ''}"/>>장치 종류</option>
                                <option value="DEVICE_NAME" <c:out value="${map.searchOption == 'DEVICE_NAME' ? 'selected' : ''}"/>>장치</option>
                                <option value="DEVICE_COMPANY" <c:out value="${map.searchOption == 'DEVICE_COMPANY' ? 'selected' : ''}"/>>제조사</option>
                                <option value="DEVICE_NUMBER" <c:out value="${map.searchOption == 'DEVICE_NUMBER' ? 'selected' : ''}"/>>제품 번호</option>
                                <option value="PRODUCT_DATE" <c:out value="${map.searchOption == 'PRODUCT_DATE' ? 'selected' : ''}"/>>제조일</option>
                            </select>
                            <p class="search_p">검색 :</p>
                            <input type="text" name="keyword" placeholder="검색어를 입력하세요.">
                            <button class="searchButton">검색</button>
                        </div>
                    </form>
                </div>
            </div>
            <div class="content_container">
                <div class="mainContent-wrap">
                    <table id="mainTable">
                        <thead>
                            <tr>
                                <th style="width: 105px;">
                                    <div class="th_div">No</div> <!-- 테이블 요소의 높이를 고정시키기 위해 div 태그 사용-->
                                </th>
                                <th style="width: 290px;">
                                    <div class="th_div">장치 종류</div>
                                </th>
                                <th style="width: 220px;">
                                    <div class="th_div">장치</div>
                                </th>
                                <th style="width: 302px;">
                                    <div class="th_div">제조사</div>
                                </th>
                                <th style="width: 306px;">
                                    <div class="th_div">제품 번호</div>
                                </th>
                                <th style="width: 276px;">
                                    <div class="th_div">제조일</div>
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="row" items="${map.list}">
                        <tr>
                            <td>
                                <div class="td_div"><a href="/view_device.do?BNO=${row.BNO}"></a></div>
                            </td>
                            <td>
                                <div class="td_div">
                                	<a href="/view_device.do?BNO=${row.BNO}">${row.DEVICE_TYPE}</a>
                                </div>
                            </td>
                            <td>
                                <div class="td_div"><a href="/view_device.do?BNO=${row.BNO}">${row.DEVICE_NAME}</a></div>
                            </td>
                            <td>
                                <div class="td_div"><a href="/view_device.do?BNO=${row.BNO}">${row.PRODUCT_COMPANY}</a></div>
                            </td>
                            <td>
                                <div class="td_div"><a href="/view_device.do?BNO=${row.BNO}">${row.DEVICE_NUMBER}</a></div>
                            </td>
                            <td>
                                <div class="td_div"><a href="/view_device.do?BNO=${row.BNO}">${row.PRODUCT_DATE}</a></div>
                            </td>
                        </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
                <div class="button-wrap">
                    <button id="insertButton" class="insertButton">등록</button>
                </div>
            </div>
        </div> <!-- 콘텐츠 wrap -->
    </div>


    <script>
        $('#searchSubmit').on('click', function(){
            $('#searchForm').submit();
        });

        $(document).ready(function(){
            var table = $('#mainTable').DataTable({
                "ordering": false, // 정렬 기능 비활성화
                "language" : {
                    "emptyTable" : "데이터가 없습니다.",
                    "info" : "_TOTAL_개 중 _START_부터 _END_까지 표시"
                },
                "searching" : false,
                "lengthChange" : false
            });
            
         	// 목록 번호 자동으로 업데이트하는 함수
            function updateNo() {
                // 현재 페이지의 시작 인덱스와 페이지 당 항목 수를 가져옵니다.
                var pageInfo = table.page.info();
                var start = pageInfo.start + 1; // DataTables에서 start는 0-based index
               
                // 각 행의 'No' 열을 업데이트합니다.
                $('#mainTable tbody tr').each(function(index) {
                    var value = start + index; // 페이지 시작 번호 + 현재 행의 인덱스
                    $(this).find('td').first().find('div.td_div a').text(value);
                });
            }

            // DataTables의 draw 이벤트를 사용하여 페이지가 그려질 때마다 번호를 업데이트합니다.
            table.on('draw', function() {
                updateNo();
            });

            // 초기 번호 업데이트
            updateNo();
    	    
         	$('#insertButton').on('click', function(){
         		location.href='/device_register.do';
         	});
         	
         	$('.logo_img').on('click', function(){
         		location.href='/home.do';
         	});
        });
        
    </script>
</body>
</html>
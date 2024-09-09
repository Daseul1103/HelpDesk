<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>프로젝트 찾기</title>
    <link rel="stylesheet" href="/css/maintenance/maintenancePop.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    
    <!-- dataTable 관련 css/js 파일 -->
    <link rel="stylesheet" href="https://cdn.datatables.net/2.1.2/css/jquery.dataTables.min.css">
    <script src="//cdn.datatables.net/2.1.2/js/dataTables.min.js"></script>
</head>
<body>
        <div class="main_container">
            <div class="top_container">
                <h1>프로젝트 찾기</h1>
            </div>  
            <div class="content_container">
                <div class="search_container">
                    <form name="searchForm" method="post" class="searchForm" action="/find_project.do">
                        <select class="searchSelect" name="searchOption">
                            <option value="all">전체</option>
                            <option value="PROJECT_NAME">프로젝트 명</option>
                            <option value="CUSTOMER_COMPANY">고객사</option>
                            <option value="CUSTOMER_MANAGER">담당자</option>
                        </select>
                        <div class="searchBox">
                            <p>검색어 입력 :</p>
                            <input type="text" name="keyword" class="searchBoxInput" placeholder="검색어를 입력하세요">
                            <button id="searchSubmit">검색</button>
                        </div>
                    </form>
                </div>
                <div class="table_container">
                    <table id="main_table">
                        <thead>
                            <tr>
                                <th style="width: 330px;">
                                    <div class="th_div">프로젝트 명</div>
                                </th>
                                <th style="width: 250px;">
                                    <div class="th_div">고객사</div>
                                </th>
                                <th style="width: 220px;">
                                    <div class="th_div">담당자</div>
                                </th>
                                <th style="width: 200px;">
                                    <div class="th_div">연락처</div>
                                </th>
                                <th style="width: 200px;">
                                    <div class="th_div">선택</div>
                                </th>
                            </tr>	
                        </thead>
                        <tbody>
                            <c:forEach var="row" items="${map.list}" varStatus="loopIndex">
                                <tr>
                                    <td>
                                        <div class="td_div">${row.PROJECT_NAME}</div>
                                    </td>
                                    <td>
                                        <div class="td_div">${row.PROJECT_COMPANY}</div>
                                    </td>
                                    <td>
                                        <div class="td_div">${row.CUSTOMER_MANAGER}</div>
                                    </td>
                                    <td>
                                        <div class="td_div">${row.CUSTOMER_MAN_TEL}</div>
                                    </td>
                                    <td>
                                        <div class="td_div"><a class="choice">선택하기</a></div>
                                    </td>
                                </tr>
                            </c:forEach>            		
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="button_container">
                <button id="cancleButton">취소</button>
            </div>
        </div>
    
        <script>
            $('#searchSubmit').on('click', function(){
                document.searchForm.submit();
            });
    
    
            // 취소 버튼을 눌렀을 때
            $('#cancleButton').on('click', function(){
                var windowChecker = confirm('프로젝트 찾기를 종료하시겠습니까?');
    
                // 확인을 누르면 창 종료, 아니면 return false 후 창 유지
                if(windowChecker) {
                    window.close();
                } else {
                    return false;
                }
            })
    
            $('.choice').on('click', function() {
                // 클릭한 요소의 부모 tr을 찾음
                var $row = $(this).closest('tr');
    
                // 각 td 요소의 텍스트를 추출
                var project = $row.find('td').eq(0).text().trim();
                var customerCompany = $row.find('td').eq(1).text().trim();
                var customerManager = $row.find('td').eq(2).text().trim();
                var managerTel = $row.find('td').eq(3).text().trim();
    
                // 콘솔에 출력
                console.log('고객사:', customerCompany);
                console.log('담당자:', customerManager);
                console.log('프로젝트 명:', project);
    
                sendChildValue(project,customerCompany,customerManager,managerTel);
            })
    
            function sendChildValue(project,company,manager,tel) {
    
                console.log('고객사:', company);
                console.log('담당자:', manager);
    
                opener.setChildValue(project,company,manager,tel);
                window.close();
            }
            
            
            $(document).ready(function(){
                    /* $.ajax({
                        url:'/find_project.do',
                        success : function(response){
                            console.log('페이지 로딩 완료');
                        },
                        error: function(xhr, status, error) {
                                console.log('페이지 로딩 실패');
                                console.log('상태:', status);
                                console.log('에러 메시지:', error);
                                console.log('상세:', xhr.responseText);
                            }
                    }); */
                    
                    $('#main_table').DataTable({
                        "ordering": false, // 정렬 기능 비활성화
                        "language" : {
                            "emptyTable" : " ",
                            "info" : "_TOTAL_개 중 _START_부터 _END_까지 표시"
                        },
                        "searching" : false,
                        "lengthChange" : false
                    });
                    
                    $('.dt-layout-full').css({
                            'display': 'flex',
                            'align-items': 'center',
                            'justify-content': 'center'
                    });
                    $('#main_table').css({
                        'width':'90%'
                    })

                    $('#main_table_info').css({
                        'margin-left':'75px'
                    })
                    
                    $('.dt-paging nav').css({
                        'margin-left' : '855px'
                    })
            
            });
        </script>
    </body>
</html>
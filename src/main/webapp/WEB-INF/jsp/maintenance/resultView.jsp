<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<table id="table8">
    <tr>
        <th class="th_style">
            <div>제목</div>
        </th>
        <td>
            <input type="text" name="LIST_TITLE" id="LIST_TITLE" value="${load.LIST_TITLE}" readonly>
        </td>
    </tr>
    <tr>
        <th class="th_style">
            <div>점검일</div>
        </th>
        <td>
            <input type="text" id="inspection_date" name="INSPECTION_DATE"  style="text-align: center;" value="${load.INSPECTION_DATE}" readonly>
        </td>
    </tr>
</table>

<table id="table9">
    <tr>
        <th class="th_style">
            <div>점검 결과</div>
        </th>
    </tr>
    <tr>
        <td>
            <textarea name="INSPECTION_RESULT" wrap="hard" id="INSPECTION_RESULT" readonly> ${load.INSPECTION_RESULT}</textarea>
        </td>
    </tr>
    <tr>
        <th class="th_style">
            <div>기타 사항</div>
        </th>
    </tr>
    <tr>
        <td>
            <textarea name="ETC" wrap="hard" id="ETC" readonly>${load.ETC}</textarea>
        </td>
    </tr>
</table>

<div class="container">
    <div class="table-container">
        <!-- 초기 테이블 -->
        <table id="table10">
            <tr>
                <th class="th_style">
                    <div>품명</div>
                </th>
                <th colspan="2" class="th_style">
                    <div>점검 사항</div>
                </th>
                <th class="th_style">
                    <div>점검 결과</div>
                </th>
            </tr>
            <tr>
                <td rowspan="11">
                    <div>Cube</div>
                </td>
                <td>
                    <div>1</div>
                </td>
                <td>
                    <div>화면 영상 표출 상태</div>
                </td>
                <td>
                    <div>
                        <input type="radio" id="list1" name="LIST1" value="nor"
                               <c:if test="${load.LIST1 eq 'nor'}">checked</c:if>>양호
                        <input type="radio" id="list1_n" name="LIST1" value="ab_nor"
                               <c:if test="${load.LIST1 eq 'ab_nor'}">checked</c:if>>이상
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div>2</div>
                </td>
                <td>
                    <div>밝기, 색상, 엣지, 화면 짤림 상태</div>
                </td>
                <td>
                    <div>
                        <input type="radio" id="list2" name="LIST2" value="nor"
                               <c:if test="${load.LIST2 eq 'nor'}">checked</c:if>>양호
                        <input type="radio" id="list2_n" name="LIST2" value="ab_nor"
                               <c:if test="${load.LIST2 eq 'ab_nor'}">checked</c:if>>이상
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div>3</div>
                </td>
                <td>
                    <div>메인보드 상태 표시 녹색점등 확인</div>
                </td>
                <td>
                    <div>
                        <input type="radio" id="list3" name="LIST3" value="nor"
                               <c:if test="${load.LIST3 eq 'nor'}">checked</c:if>>양호
                        <input type="radio" id="list3_n" name="LIST3" value="ab_nor"
                               <c:if test="${load.LIST3 eq 'ab_nor'}">checked</c:if>>이상
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div>4</div>
                </td>
                <td>
                    <div>Screen 상태 확인</div>
                </td>
                <td>
                    <div>
                        <input type="radio" id="list4" name="LIST4" value="nor"
                               <c:if test="${load.LIST4 eq 'nor'}">checked</c:if>>양호
                        <input type="radio" id="list4_n" name="LIST4" value="ab_nor"
                               <c:if test="${load.LIST4 eq 'ab_nor'}">checked</c:if>>이상
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div>5</div>
                </td>
                <td>
                    <div>Geometry (grid 상태) 확인</div>
                </td>
                <td>
                    <div>
                        <input type="radio" id="list5" name="LIST5" value="nor"
                               <c:if test="${load.LIST5 eq 'nor'}">checked</c:if>>양호
                        <input type="radio" id="list5_n" name="LIST5" value="ab_nor"
                               <c:if test="${load.LIST5 eq 'ab_nor'}">checked</c:if>>이상
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div>6</div>
                </td>
                <td>
                    <div>엔진 상태(렌즈부, 반사경 등 육안 확인)</div>
                </td>
                <td>
                    <div>
                        <input type="radio" id="list6" name="LIST6" value="nor"
                               <c:if test="${load.LIST6 eq 'nor'}">checked</c:if>>양호
                        <input type="radio" id="list6_n" name="LIST6" value="ab_nor"
                               <c:if test="${load.LIST6 eq 'ab_nor'}">checked</c:if>>이상
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div>7</div>
                </td>
                <td>
                    <div>Power 공급 상태</div>
                </td>
                <td>
                    <div>
                        <input type="radio" id="list7" name="LIST7" value="nor"
                               <c:if test="${load.LIST7 eq 'nor'}">checked</c:if>>양호
                        <input type="radio" id="list7_n" name="LIST7" value="ab_nor"
                               <c:if test="${load.LIST7 eq 'ab_nor'}">checked</c:if>>이상
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div>8</div>
                </td>
                <td>
                    <div>후면 LCD 상태 확인</div>
                </td>
                <td>
                    <div>
                        <input type="radio" id="list8" name="LIST8" value="nor"
                               <c:if test="${load.LIST8 eq 'nor'}">checked</c:if>>양호
                        <input type="radio" id="list8_n" name="LIST8" value="ab_nor"
                               <c:if test="${load.LIST8 eq 'ab_nor'}">checked</c:if>>이상
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div>9</div>
                </td>
                <td>
                    <div>후면 배기 FAN 동작 상태 확인</div>
                </td>
                <td>
                    <div>
                        <input type="radio" id="list9" name="LIST9" value="nor"
                               <c:if test="${load.LIST9 eq 'nor'}">checked</c:if>>양호
                        <input type="radio" id="list9_n" name="LIST9" value="ab_nor"
                               <c:if test="${load.LIST9 eq 'ab_nor'}">checked</c:if>>이상
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div>10</div>
                </td>
                <td>
                    <div>LED칩 (R,G,B) 3색 표출상태 확인</div>
                </td>
                <td>
                    <div>
                        <input type="radio" id="list10" name="LIST10" value="nor"
                               <c:if test="${load.LIST10 eq 'nor'}">checked</c:if>>양호
                        <input type="radio" id="list10_n" name="LIST10" value="ab_nor"
                               <c:if test="${load.LIST10 eq 'ab_nor'}">checked</c:if>>이상
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div>11</div>
                </td>
                <td>
                    <div>메인보드 상태 표시 녹색점등 확인</div>
                </td>
                <td>
                    <div>
                        <input type="radio" id="list11" name="LIST11" value="nor"
                               <c:if test="${load.LIST11 eq 'nor'}">checked</c:if>>양호
                        <input type="radio" id="list11_n" name="LIST11" value="ab_nor"
                               <c:if test="${load.LIST11 eq 'ab_nor'}">checked</c:if>>이상
                    </div>
                </td>
            </tr>
        </table>
    </div>
</div>

<table id="table11">
    <tr>
        <th class="th_style">
            <div>점검자 소속</div>
        </th>
        <td>
            <input type="text" name="INSPECTOR_COM" id="INSPECTOR_COM" value="${load.INSPECTOR_COM}" readonly>
        </td>
        <th class="th_style">
            <div>확인자 소속</div>
        </th>
        <td>
            <input type="text" name="CHECKER_COM" id="CHECKER_COM" value="${load.CHECKER_COM}" readonly>
        </td>
    </tr>
    <tr>
        <th class="th_style">
            <div>점검자</div>
        </th>
        <td>
            <input type="text" name="INSPECTOR" id="INSPECTOR" value="${load.INSPECTOR}" readonly>
        </td>
        <th class="th_style">
            <div>확인자</div>
        </th>
        <td>
            <input type="text" name="CHECKER" id="CHECKER" value="${load.CHECKER}" readonly>
        </td>
    </tr>
</table>
<script>
    $(document).ready(function(){
        $('input').css('pointer-events', 'none');
    })
</script>
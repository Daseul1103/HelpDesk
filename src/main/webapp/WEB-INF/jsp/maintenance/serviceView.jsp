<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <table id="table1">
        <tr>
            <th class="th_style" style="width: 250px;">
                <div>
                    고객사
                </div>
            </th>
            <td>
                <div>
                    <p>${load.CHECKER_COM}</p>
                </div>
            </td>
        </tr>
        <tr>
            <th class="th_style" style="width: 250px;">
                <div>
                    점검 일자
                </div>
            </th>
            <td>
                <label for="inspection_date">
                <div>
                    <p>${load.INSPECTION_DATE}</p>
                </div>
                </label>
            </td>
        </tr>
    </table>

    <table id="table2">
        <tr>
            <th style="width: 250px;" class="th_style">
                <div>
                    계약 유형
                </div>
            </th>
            <td>
                <div>
                    <input type="checkbox" name="CONTRACT_TYPE" value="${load.CONTRACT_TYPE}"
                    <c:if test="${load.CONTRACT_TYPE eq 'year'}">checked</c:if>>연간 계약
                    <input type="checkbox" name="CONTRACT_TYPE" value="${load.CONTRACT_TYPE}"
                    <c:if test="${load.CONTRACT_TYPE eq 'call'}">checked</c:if>>콜
                </div>
            </td>
        </tr>
        <tr>
            <th style="width: 250px;" class="th_style">
                <div>
                    방문 유형
                </div>
            </th>
            <td>
                <div>
                    <input type="radio" name="VISIT_TYPE" id="regular_inspection" value="regular_inspection"
               		<c:if test="${load.VISIT_TYPE eq 'regular_inspection'}">checked</c:if>>정기/예방 점검
        			<input type="radio" name="VISIT_TYPE" id="emergency_inspection" value="emergency_inspection"
               		<c:if test="${load.VISIT_TYPE eq 'emergency_inspection'}">checked</c:if>>긴급 점검
        			<input type="radio" name="VISIT_TYPE" id="spot" value="spot"
               		<c:if test="${load.VISIT_TYPE eq 'spot'}">checked</c:if>>현장 대기
        			<input type="radio" name="VISIT_TYPE" id="delivery" value="delivery"
               		<c:if test="${load.VISIT_TYPE eq 'delivery'}">checked</c:if>>납품
                </div>
            </td>
        </tr>
    </table>
    <table id="table3">
        <tr>
            <th style="width: 250px;" class="th_style">
                <div>
                    접수 내역
                </div>
            </th>
            <td>
                <div>
                    <input type="text" name="LIST_TITLE" id="LIST_TITLE" value="${load.LIST_TITLE}" readonly>
                </div>
            </td>
        </tr>
    </table>
    <table id="table4">
        <tr>
            <th colspan="2" style="width:500px;" class="th_style">
                <div>
                    일 반 점 검 내 용
                </div>
            </th>
            <th colspan="2" style="width:500px;" class="th_style">
                <div>
                    점 검 상 태
                </div>
            </th>
        </tr>
        <tr>
            <td>
                <div>1</div>
            </td>
            <td>
                <div>Display 장비 표출 상태</div>
            </td>
            <td colspan="2">
                <div>
                    <input type="radio" name="SERVICE_LIST1" id="nor1_1" value="nor"
                           <c:if test="${load.SERVICE_LIST1 eq 'nor'}">checked</c:if>>정상 동작
                    <input type="radio" name="SERVICE_LIST1" id="ab_nor1_1" value="ab_nor"
                           <c:if test="${load.SERVICE_LIST1 eq 'ab_nor'}">checked</c:if>>오동작
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div>2</div>
            </td>
            <td>
                <div>Controll System 연동 상태</div>
            </td>
            <td colspan="2">
                <div>
                    <input type="radio" name="SERVICE_LIST2" id="nor2_2" value="nor"
                           <c:if test="${load.SERVICE_LIST2 eq 'nor'}">checked</c:if>>정상 동작
                    <input type="radio" name="SERVICE_LIST2" id="ab_nor2_2" value="ab_nor"
                           <c:if test="${load.SERVICE_LIST2 eq 'ab_nor'}">checked</c:if>>오동작
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div>3</div>
            </td>
            <td>
                <div>입력 신호 표출 상태</div>
            </td>
            <td colspan="2">
                <div>
                    <input type="radio" name="SERVICE_LIST3" id="nor3_3" value="nor"
                           <c:if test="${load.SERVICE_LIST3 eq 'nor'}">checked</c:if>>정상
                    <input type="radio" name="SERVICE_LIST3" id="ab_nor3_3" value="ab_nor"
                           <c:if test="${load.SERVICE_LIST3 eq 'ab_nor'}">checked</c:if>>이상
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div>4</div>
            </td>
            <td>
                <div>각종 장비 구동 상태</div>
            </td>
            <td colspan="2">
                <div>
                    <input type="radio" name="SERVICE_LIST4" id="nor4_4" value="nor"
                           <c:if test="${load.SERVICE_LIST4 eq 'nor'}">checked</c:if>>정상 동작
                    <input type="radio" name="SERVICE_LIST4" id="ab_nor4_4" value="ab_nor"
                           <c:if test="${load.SERVICE_LIST4 eq 'ab_nor'}">checked</c:if>>오동작
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div>5</div>
            </td>
            <td>
                <div>각종 케이블 연결 상태</div>
            </td>
            <td colspan="2">
                <div>
                    <input type="radio" name="SERVICE_LIST5" id="nor5_5" value="nor"
                           <c:if test="${load.SERVICE_LIST5 eq 'nor'}">checked</c:if>>정상
                    <input type="radio" name="SERVICE_LIST5" id="ab_nor5_5" value="ab_nor"
                           <c:if test="${load.SERVICE_LIST5 eq 'ab_nor'}">checked</c:if>>이상
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div>6</div>
            </td>
            <td>
                <div>장비 청결 상태(스크린 포함)</div>
            </td>
            <td colspan="2">
                <div>
                    <input type="radio" name="SERVICE_LIST6" id="good_6" value="good"
                           <c:if test="${load.SERVICE_LIST6 eq 'good'}">checked</c:if>>양호
                    <input type="radio" name="SERVICE_LIST6" id="clean_6" value="clean"
                           <c:if test="${load.SERVICE_LIST6 eq 'clean'}">checked</c:if>>청소 요함
                    <input type="radio" name="SERVICE_LIST6" id="bad_6" value="bad"
                           <c:if test="${load.SERVICE_LIST6 eq 'bad'}">checked</c:if>>이상 발생
                </div>
            </td>
        </tr>
    </table>
    <table id="table5">
        <tr>
            <th class="th_style">
                <div>
                    - 점 검 결 과 -
                </div>
            </th>
        </tr>
        <td>
            <div>
                <textarea name="INSPECTION_RESULT" wrap="hard" id="INSPECTION_RESULT" readonly>
						${load.INSPECTION_RESULT}
                </textarea>
            </div>
        </td>
    </table>
    <table id="table6">
        <tr>
            <th class="th_style">
                <div>
                    - 기 타 사 항 -
                </div>
            </th>
        </tr>
        <td>
            <div>
                <textarea name="ETC" wrap="hard" id="ETC" readonly >
						${load.ETC}
                </textarea>
            </div>
        </td>
    </table>
    <table id="table7">
        <tr>
            <th rowspan="2" style="width: 200px;" class="th_style">
                <div>
                    점검자
                </div>
            </th>
            <td rowspan="2" style="width: 300px;">
                <div>
                    <input type="text" name="INSPECTOR" id="INSPECTOR" value="${load.INSPECTOR}" readonly>
                </div>
            </td>
            <th style="width: 200px;" class="th_style">
                <div>
                    고객 확인
                </div>
            </th>
            <td>
                <div>
                    <input type="text" name="CHECKER" id="CHECKER"  value="${load.CHECKER}" readonly>
                </div>
            </td>
        </tr>
        <tr>
            <th class="th_style">
                <div>
                    연락처
                </div>
            </th>
            <td>
                <div>
                    <input type="text" name="CHECKER_TEL" id="CHECKER_TEL" value="${load.CHECKER_TEL}"  readonly>
                </div>
            </td>
        </tr>
    </table>
<script>
    $(document).ready(function(){
        $('input').css('pointer-events', 'none');
    })
</script>
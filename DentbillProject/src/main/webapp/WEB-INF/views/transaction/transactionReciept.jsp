<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<style>
	.form-label{
		margin-top: 0.5rem;
	}
	.form-check{
		display:inline-block;
	    padding-left: 2em;
	}
</style>
<script src="/resources/libs/jquery/dist/jquery.min.js"></script>
<script type="text/javascript">
 
	window.onload = function() {
		today = new Date();
		today = today.toISOString().slice(0, 10);
		regD = document.getElementById("reg_date");
		regD.value = today;
	}
	
	function chkSubmit(item, msg){
		if(item.val().replace(/\s/g,"")==""){
			alert(msg + "확인해 주세요.");
			return false;
		} else{
			return true;
		}
	}
 
	$(function(){ 
	
		$("#transationInsert").click(function(){
			
			//null값 확인
			if(chkSubmit($("#exp_date"),'완성일자를 ')){
				return false;
			}else if(chkSubmit($("select[name=partner_name]"),'거래처를 ')){
				return false;
			}else if(chkSubmit($("#patient_name").val().replace(/\s/g,"")=="")){
				alert("환자명을 확인해 주세요.");
				return false;
			}else if(chkSubmit($("select[name=prosthetics_name]"),'보철명을 ')){
				return false;
			}else if(chkSubmit($("#formula_id"),'치식을 ')){
				return false;
			}else if(chkSubmit($("#amount"),'수량을 ')){
				return false;
			}else if(chkSubmit($("#shade"),'쉐이드를 ')){
				return false;
			}else{
				$("#transactionInsert-form").attr({
					"method":"post",
					"action":"/transactinoInsert"
				});
				$("#transactionInsert-form").submit();
			}
		});
		
		$("#prosthetic_name").change(function(){
			prosthetics_name = $("select[name=prosthetic_name]").val();
			alert(prosthetics_name);
		});
		
		/*접수 완료 후 성공/실패 alert 후 redirect*/
		if('${message}' != ""){
			var message = "${message}" ;
			alert(message);
		}
	});
	
</script>
 <div class="card">
   <div class="card-body">
     <h5 class="card-title fw-semibold mb-4">Forms</h5>
     <div class="card">
       <div class="card-body">
         <form id="transactionInsert-form">
           <div class="mb-3">
             <label for="reg_date" class="form-label">접수일</label>
              <input type="date" class="form-control" id="reg_date" name="reg_date" >
             <label for="exp_date" class="form-label">완성일</label>
              <input type="date" class="form-control" id="exp_date" name="exp_date">
             <label for="partner_name" class="form-label">거래처</label>
              <select class="form-select" id="partner_name" name="partner_name">
	              	<optgroup label="치과">
	              		<c:forEach var="partnerVO" items="${partnerList}" varStatus="status">
		              		<c:if test="${partnerVO.partner_type eq '치과'}">
					           <option>  <h6 class="fw-semibold mb-1">${partnerVO.partner_name}</h6> </option>
			                </c:if>
		                </c:forEach>
	                </optgroup>
	                <optgroup label="외주기공소">
	              		<c:forEach var="partnerVO" items="${partnerList}" varStatus="status">
		                	<c:if test="${partnerVO.partner_type eq '외주기공소'}">
		                		<option>  <h6 class="fw-semibold mb-1">${partnerVO.partner_name}</h6> </option>
			                </c:if>
		                </c:forEach>
	                </optgroup>
              </select>
             <label for="patient_name" class="form-label">환자명</label>
              <input type="email" class="form-control" id="patient_name" name="patient_name">
             <label for="prosthetics_name" class="form-label">보철종류</label>
              <select class="form-select" id="prosthetics_name" name="prosthetic_name">
              		<c:forEach var="prostheticsVO" items="${prostheticsList}" varStatus="status">
	              		<option>  <h6 class="fw-semibold mb-1">${prostheticsVO.prosthetic_name}</h6> </option>>
	                </c:forEach>
              </select>
             <label for="exampleInputEmail1" class="form-label">치식</label>
              <input type="email" class="form-control" id="formula_id" name="formula_id">
             <label for="exampleInputEmail1" class="form-label">수량</label>
              <input type="email" class="form-control" id="amount" name="amount">
             <label for="exampleInputEmail1" class="form-label">쉐이드</label>
              <input type="email" class="form-control" id="shade" name="shade">
           </div>
           <div class="form-check">
             <input type="checkbox" class="form-check-input" id="remakeCheck">
             <label class="form-check-label" for="remakeCheck">Remake</label>
           </div>
           <div class="form-check">
             <input type="checkbox" class="form-check-input" id="repairCheck">
             <label class="form-check-label" for="repairCheck">Repair</label>
           </div>
           <div class="mb-3">
             <label for="exampleInputPassword1" class="form-label">Memo</label>
             <input type="text" class="form-control" id="memo" name="memo">
           </div>
           <button type="button" class="btn btn-outline-primary m-1" id="transationInsertAdd">추가</button>
           <button type="button" class="btn btn-primary transationSubmit" id="transationInsert">접수완료</button>
         </form>
       </div>
     </div>
   </div>
 </div>
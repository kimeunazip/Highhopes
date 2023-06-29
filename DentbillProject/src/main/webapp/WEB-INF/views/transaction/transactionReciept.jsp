<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<style>
	.form-label{
		margin-top: 0.5rem;
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
	$(function(){ 
		$(".transationInsert").click(function(){
			alert("Dd");
		});
	});
	
</script>
 <div class="card">
   <div class="card-body">
     <h5 class="card-title fw-semibold mb-4">Forms</h5>
     <div class="card">
       <div class="card-body">
         <form>
           <div class="mb-3">
             <label for="reg_date" class="form-label">접수일</label>
              <input type="date" class="form-control" id="reg_date" name="reg_date" >
             <label for="exp_date" class="form-label">완성일</label>
              <input type="date" class="form-control" id="exp_date" name="exp_date">
             <label for="partner_name" class="form-label">거래처</label>
              <select class="form-select" id="partner_name" >
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
             	<select class="form-select" id="dental_prosthetics_name" >
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
           <div class="mb-3">
             <label for="exampleInputPassword1" class="form-label">Memo</label>
             <input type="text" class="form-control" id="memo" name="memo">
           </div>
           <button type="submit" class="btn btn-primary transationInsert" id="transationInsert">접수완료</button>
         </form>
       </div>
     </div>
   </div>
 </div>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<style>
	.form-label{
		margin-top: 0.5rem;
	}
</style>
<script type="text/javascript">
	window.onload = function() {
		today = new Date();
		today = today.toISOString().slice(0, 10);
		regD = document.getElementById("reg_date");
		regD.value = today;
	}
</script>
 <div class="card">
   <div class="card-body">
     <h5 class="card-title fw-semibold mb-4">Forms</h5>
     <div class="card">
       <div class="card-body">
         <form>
           <div class="mb-3">
             <label for="reg_date" class="form-label">접수일</label>
              <input type="date" class="form-control" id="reg_date" aria-describedby="emailHelp">
             <label for="exp_date" class="form-label">완성일</label>
              <input type="date" class="form-control" id="exp_date" aria-describedby="emailHelp">
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
              <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
             <label for="prosthetics_name" class="form-label">보철종류</label>
           	  <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
             <label for="exampleInputEmail1" class="form-label">치식</label>
              <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
             <label for="exampleInputEmail1" class="form-label">수량</label>
              <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
             <label for="exampleInputEmail1" class="form-label">쉐이드</label>
              <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
           </div>
           <div class="mb-3">
             <label for="exampleInputPassword1" class="form-label">Memo</label>
             <input type="text" class="form-control" id="exampleInputPassword1">
           </div>
           <!-- <div class="mb-3 form-check">
             <input type="checkbox" class="form-check-input" id="exampleCheck1">
             <label class="form-check-label" for="exampleCheck1">Check me out</label>
           </div> -->
           <button type="submit" class="btn btn-primary">접수완료</button>
           <button type="button" class="btn btn-primary">초기화</button>
         </form>
       </div>
     </div>
    <!--  <h5 class="card-title fw-semibold mb-4">Disabled forms</h5>
     <div class="card mb-0">
       <div class="card-body">
         <form>
           <fieldset disabled>
             <legend>Disabled fieldset example</legend>
             <div class="mb-3">
               <label for="disabledTextInput" class="form-label">Disabled input</label>
               <input type="text" id="disabledTextInput" class="form-control" placeholder="Disabled input">
             </div>
             <div class="mb-3">
               <label for="disabledSelect" class="form-label">Disabled select menu</label>
               <select id="disabledSelect" class="form-select">
                 <option>Disabled select</option>
               </select>
             </div>
             <div class="mb-3">
               <div class="form-check">
                 <input class="form-check-input" type="checkbox" id="disabledFieldsetCheck" disabled>
                 <label class="form-check-label" for="disabledFieldsetCheck">
                   Can't check this
                 </label>
               </div>
             </div>
             <button type="submit" class="btn btn-primary">Submit</button>
           </fieldset>
         </form>
       </div>
     </div> -->
   </div>
 </div>
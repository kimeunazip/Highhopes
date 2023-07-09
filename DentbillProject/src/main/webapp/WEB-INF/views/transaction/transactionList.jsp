<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<div class="container-fluid">
	<div class="col-lg-12 d-flex align-items-stretch">
	    <div class="card w-100">
	        <div class="card-body p-4">
	           <h5 class="card-title fw-semibold mb-4">Today`s Transactions<span style="font-size: 9px;">&nbsp&nbsp오늘의 접수 내역</span></h5>
	             <div class="table-responsive">
	                 <table class="table text-nowrap mb-0 align-middle">
	                     <thead class="text-dark fs-4">
	                     <tr>
	                         <th class="border-bottom-0">
	                             <h6 class="fw-semibold mb-0">번호</h6>
	                         </th>
	                         <th class="border-bottom-0">
	                             <h6 class="fw-semibold mb-0">치과명</h6>
	                         </th>
	                         <th class="border-bottom-0">
	                             <h6 class="fw-semibold mb-0">환자명</h6>
	                         </th>
	                         <th class="border-bottom-0">
	                             <h6 class="fw-semibold mb-0">보철명</h6>
	                         </th>
	                         <th class="border-bottom-0">
	                             <h6 class="fw-semibold mb-0">쉐이드</h6>
	                         </th>
	                         <th class="border-bottom-0">
	                             <h6 class="fw-semibold mb-0">수량</h6>
	                         </th>
	                     </tr>
	                     </thead>
	                     <tbody>
	                     <tr>
	                         <td class="border-bottom-0"><h6 class="fw-semibold mb-0">1</h6></td>
	                         <td class="border-bottom-0">
	                             <h6 class="fw-semibold mb-1">Elite Admin</h6>
	                             <span class="fw-normal">Web Designer</span>
	                         </td>
	                         <td class="border-bottom-0">
	                             <p class="mb-0 fw-normal">Elite Admin</p>
	                         </td>
	                         <td class="border-bottom-0">
	                             <h6 class="fw-semibold mb-0 fs-4">$3.9</h6>
	                         </td>
	                          <td class="border-bottom-0">
	                             <h6 class="fw-semibold mb-0 fs-4">$3.9</h6>
	                         </td>
	                     </tr>
	                     <tr>
	                         <td class="border-bottom-0"><h6 class="fw-semibold mb-0">2</h6></td>
	                         <td class="border-bottom-0">
	                             <h6 class="fw-semibold mb-1">Andrew McDownland</h6>
	                             <span class="fw-normal">Project Manager</span>
	                         </td>
	                         <td class="border-bottom-0">
	                             <p class="mb-0 fw-normal">Real Homes WP Theme</p>
	                         </td>
	                         <td class="border-bottom-0">
	                             <h6 class="fw-semibold mb-0 fs-4">$24.5k</h6>
	                         </td>
	                         <td class="border-bottom-0">
	                             <h6 class="fw-semibold mb-0 fs-4">$24.5k</h6>
	                         </td>
	                     </tr>
	                     <tr>
	                         <td class="border-bottom-0"><h6 class="fw-semibold mb-0">3</h6></td>
	                         <td class="border-bottom-0">
	                             <h6 class="fw-semibold mb-1">Christopher Jamil</h6>
	                             <span class="fw-normal">Project Manager</span>
	                         </td>
	                         <td class="border-bottom-0">
	                             <p class="mb-0 fw-normal">MedicalPro WP Theme</p>
	                         </td>
	                         <td class="border-bottom-0">
	                             <h6 class="fw-semibold mb-0 fs-4">$12.8k</h6>
	                         </td>
	                         <td class="border-bottom-0">
	                             <h6 class="fw-semibold mb-0 fs-4">$12.8k</h6>
	                         </td>
	                     </tr>
	                     </tbody>
	                 </table>
	             </div>
                 <button type="button" class="btn btn-primary" id="transationReciept" onclick="location.href='/transactionReciept'">접수하기</button>
	         </div>
	     </div>
	 </div>
 </div>
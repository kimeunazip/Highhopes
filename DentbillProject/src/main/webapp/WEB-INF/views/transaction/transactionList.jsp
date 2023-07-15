 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


  <!-- Custom fonts for this template -->
    <link href="/resources/sb/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/resources/sb/css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="/resources/sb/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
     
     <!-- Custom fonts for this template -->
    <link href="/resources/sb/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/resources/sb/css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="/resources/sb/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
    
    <!-- ================== BEGIN BASE CSS STYLE ================== -->
	<link href="resources/color-admin/assets/css/style-responsive.min.css" rel="stylesheet" />
	<link href="resources/color-admin/assets/css/theme/default.css" rel="stylesheet" id="theme" />
	<!-- ================== END BASE CSS STYLE ================== -->
	
	<!-- ================== BEGIN PAGE LEVEL STYLE ================== -->
	<link href="resources/color-admin/assets/plugins/fullcalendar/fullcalendar.print.css" rel="stylesheet" media='print' />
	<link href="resources/color-admin/assets/plugins/fullcalendar/fullcalendar.min.css" rel="stylesheet" />
	<!-- ================== END PAGE LEVEL STYLE ================== -->
	
	<!-- ================== BEGIN BASE JS ================== -->
	<script src="/resources/color-admin/assets/plugins/pace/pace.min.js"></script>
	<!-- ================== END BASE JS ================== -->
    
<div class="container-fluid">
	<!-- 1. 오늘의 접수명단 -->
	<%-- <div class="col-lg-12 d-flex align-items-stretch">
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
	                             <h6 class="fw-semibold mb-0">치식</h6>
	                         </th>
	                         <th class="border-bottom-0">
	                             <h6 class="fw-semibold mb-0">수량</h6>
	                         </th>
	                           <th class="border-bottom-0">
	                             <h6 class="fw-semibold mb-0">쉐이드</h6>
	                         </th>
	                         <th class="border-bottom-0">
	                             <h6 class="fw-semibold mb-0">완성날짜</h6>
	                         </th>
	                         <th class="border-bottom-0">
	                             <h6 class="fw-semibold mb-0">메모</h6>
	                         </th>
	                     </tr>
	                     </thead>
	                     <tbody>
		                     <c:forEach var="transactionVO" items="${transactinoList}" varStatus="status">
			                     <tr>
			                         <td class="border-bottom-0"><h6 class="mb-0 fw-normal">${status.count}</h6></td>
			                         <td class="border-bottom-0">
			                             <h6 class="mb-0 fw-normal">${transactionVO.partner_name}</h6>
			                         </td>
			                         <td class="border-bottom-0">
			                             <h6 class="mb-0 fw-normal">${transactionVO.patient_name}</h6>
			                         </td>
			                         <td class="border-bottom-0">
			                             <h6 class="mb-0 fw-normal">${transactionVO.prosthetic_name}</h6>
			                         </td>
			                         <td class="border-bottom-0">
			                             <h6 class="mb-0 fw-normal">${transactionVO.formula_id}</h6>
			                         </td>
			                          <td class="border-bottom-0">
			                             <h6 class="mb-0 fw-normal">${transactionVO.amount}</h6>
			                         </td>
			                         <td class="border-bottom-0">
			                             <h6 class="mb-0 fw-normal">${transactionVO.shade}</h6>
			                         </td>
			                          <td class="border-bottom-0">
			                             <h6 class="mb-0 fw-normal">${transactionVO.exp_date}</h6>
			                         </td>
			                          <td class="border-bottom-0">
			                             <h6 class="mb-0 fw-normal">${transactionVO.memo}</h6>
			                         </td>
			                     </tr>
		                     </c:forEach>
	                     </tbody>
	                 </table>
	             </div>
                 <button type="button" class="btn btn-primary" id="transationReciept" onclick="location.href='/transactionReciept'">접수하기</button>
	         </div>
	     </div>
     </div> --%>
     
   <!-- 2. 전체목록 -->
   <!-- DataTales Example -->
   <div class="card shadow mb-4">
       <div class="card-header py-3">
           <h6 class="m-0 font-weight-bold text-primary">DataTables Example</h6>
       </div>
       <div class="card-body">
           <div class="table-responsive">
               <div id="dataTable_wrapper" class="dataTables_wrapper dt-bootstrap4"><div class="row"><div class="col-sm-12 col-md-6"><div class="dataTables_length" id="dataTable_length"><label>Show <select name="dataTable_length" aria-controls="dataTable" class="custom-select custom-select-sm form-control form-control-sm"><option value="10">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select> entries</label></div></div><div class="col-sm-12 col-md-6"><div id="dataTable_filter" class="dataTables_filter"><label>Search:<input type="search" class="form-control form-control-sm" placeholder="" aria-controls="dataTable"></label></div></div></div><div class="row"><div class="col-sm-12"><table class="table table-bordered dataTable" id="dataTable" width="100%" cellspacing="0" role="grid" aria-describedby="dataTable_info" style="width: 100%;">
                   <thead>
                       <tr role="row"><th class="sorting sorting_desc" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Name: activate to sort column ascending" aria-sort="descending" style="width: 69.2px;">Name</th><th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending" style="width: 86.2px;">Position</th><th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Office: activate to sort column ascending" style="width: 56.2px;">Office</th><th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Age: activate to sort column ascending" style="width: 30.2px;">Age</th><th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Start date: activate to sort column ascending" style="width: 70.2px;">Start date</th><th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Salary: activate to sort column ascending" style="width: 66.2px;">Salary</th></tr>
                   </thead>
                   <tfoot>
                       <tr><th rowspan="1" colspan="1">Name</th><th rowspan="1" colspan="1">Position</th><th rowspan="1" colspan="1">Office</th><th rowspan="1" colspan="1">Age</th><th rowspan="1" colspan="1">Start date</th><th rowspan="1" colspan="1">Salary</th></tr>
                   </tfoot>
                   <tbody>
                   <tr class="odd">
                           <td class="sorting_1">Zorita Serrano</td>
                           <td class="">Software Engineer</td>
                           <td class="">San Francisco</td>
                           <td class="">56</td>
                           <td class="">2012/06/01</td>
                           <td class="">$115,000</td>
                       </tr><tr class="even">
                           <td class="sorting_1">Zenaida Frank</td>
                           <td class="">Software Engineer</td>
                           <td class="">New York</td>
                           <td class="">63</td>
                           <td class="">2010/01/04</td>
                           <td class="">$125,250</td>
                       </tr><tr class="odd">
                           <td class="sorting_1">Yuri Berry</td>
                           <td class="">Chief Marketing Officer (CMO)</td>
                           <td class="">New York</td>
                           <td class="">40</td>
                           <td class="">2009/06/25</td>
                           <td class="">$675,000</td>
                       </tr><tr class="even">
                           <td class="sorting_1">Vivian Harrell</td>
                           <td class="">Financial Controller</td>
                           <td class="">San Francisco</td>
                           <td class="">62</td>
                           <td class="">2009/02/14</td>
                           <td class="">$452,500</td>
                       </tr><tr class="odd">
                           <td class="sorting_1">Unity Butler</td>
                           <td class="">Marketing Designer</td>
                           <td class="">San Francisco</td>
                           <td class="">47</td>
                           <td class="">2009/12/09</td>
                           <td class="">$85,675</td>
                       </tr><tr class="even">
                           <td class="sorting_1">Timothy Mooney</td>
                           <td class="">Office Manager</td>
                           <td class="">London</td>
                           <td class="">37</td>
                           <td class="">2008/12/11</td>
                           <td class="">$136,200</td>
                       </tr><tr class="odd">
                           <td class="sorting_1">Tiger Nixon</td>
                           <td class="">System Architect</td>
                           <td class="">Edinburgh</td>
                           <td class="">61</td>
                           <td class="">2011/04/25</td>
                           <td class="">$320,800</td>
                       </tr><tr class="even">
                           <td class="sorting_1">Thor Walton</td>
                           <td class="">Developer</td>
                           <td class="">New York</td>
                           <td class="">61</td>
                           <td class="">2013/08/11</td>
                           <td class="">$98,540</td>
                       </tr><tr class="odd">
                           <td class="sorting_1">Tatyana Fitzpatrick</td>
                           <td class="">Regional Director</td>
                           <td class="">London</td>
                           <td class="">19</td>
                           <td class="">2010/03/17</td>
                           <td class="">$385,750</td>
                       </tr><tr class="even">
                           <td class="sorting_1">Suki Burks</td>
                           <td class="">Developer</td>
                           <td class="">London</td>
                           <td class="">53</td>
                           <td class="">2009/10/22</td>
                           <td class="">$114,500</td>
                       </tr></tbody>
               </table></div></div><div class="row"><div class="col-sm-12 col-md-5"><div class="dataTables_info" id="dataTable_info" role="status" aria-live="polite">Showing 1 to 10 of 57 entries</div></div><div class="col-sm-12 col-md-7"><div class="dataTables_paginate paging_simple_numbers" id="dataTable_paginate"><ul class="pagination"><li class="paginate_button page-item previous disabled" id="dataTable_previous"><a href="#" aria-controls="dataTable" data-dt-idx="0" tabindex="0" class="page-link">Previous</a></li><li class="paginate_button page-item active"><a href="#" aria-controls="dataTable" data-dt-idx="1" tabindex="0" class="page-link">1</a></li><li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="2" tabindex="0" class="page-link">2</a></li><li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="3" tabindex="0" class="page-link">3</a></li><li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="4" tabindex="0" class="page-link">4</a></li><li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="5" tabindex="0" class="page-link">5</a></li><li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="6" tabindex="0" class="page-link">6</a></li><li class="paginate_button page-item next" id="dataTable_next"><a href="#" aria-controls="dataTable" data-dt-idx="7" tabindex="0" class="page-link">Next</a></li></ul></div></div></div></div>
           </div>
       </div>
     </div>
     
     <!-- 3. 달력 -->
     <div id="calendar" class="vertical-box-column p-15 calendar fc fc-unthemed fc-ltr"><div class="fc-toolbar"><div class="fc-left"><div class="fc-button-group"><button type="button" class="fc-month-button fc-button fc-state-default fc-corner-left fc-state-active">month</button><button type="button" class="fc-agendaWeek-button fc-button fc-state-default">week</button><button type="button" class="fc-agendaDay-button fc-button fc-state-default fc-corner-right">day</button></div></div><div class="fc-right"><div class="fc-button-group"><button type="button" class="fc-prev-button fc-button fc-state-default fc-corner-left"><span class="fc-icon fc-icon-left-single-arrow"></span></button><button type="button" class="fc-today-button fc-button fc-state-default fc-state-disabled" disabled="">today</button><button type="button" class="fc-next-button fc-button fc-state-default fc-corner-right"><span class="fc-icon fc-icon-right-single-arrow"></span></button></div></div><div class="fc-center"><h2>July 2023</h2></div><div class="fc-clear"></div></div><div class="fc-view-container" style=""><div class="fc-view fc-month-view fc-basic-view" style=""><table><thead class="fc-head"><tr><td class="fc-head-container fc-widget-header"><div class="fc-row fc-widget-header"><table><thead><tr><th class="fc-day-header fc-widget-header fc-sun">Sun</th><th class="fc-day-header fc-widget-header fc-mon">Mon</th><th class="fc-day-header fc-widget-header fc-tue">Tue</th><th class="fc-day-header fc-widget-header fc-wed">Wed</th><th class="fc-day-header fc-widget-header fc-thu">Thu</th><th class="fc-day-header fc-widget-header fc-fri">Fri</th><th class="fc-day-header fc-widget-header fc-sat">Sat</th></tr></thead></table></div></td></tr></thead><tbody class="fc-body"><tr><td class="fc-widget-content"><div class="fc-scroller fc-day-grid-container" style="overflow: hidden; height: 310px;"><div class="fc-day-grid fc-unselectable"><div class="fc-row fc-week fc-widget-content fc-rigid" style="height: 51px;"><div class="fc-bg"><table><tbody><tr><td class="fc-day fc-widget-content fc-sun fc-other-month fc-past" data-date="2023-06-25"></td><td class="fc-day fc-widget-content fc-mon fc-other-month fc-past" data-date="2023-06-26"></td><td class="fc-day fc-widget-content fc-tue fc-other-month fc-past" data-date="2023-06-27"></td><td class="fc-day fc-widget-content fc-wed fc-other-month fc-past" data-date="2023-06-28"></td><td class="fc-day fc-widget-content fc-thu fc-other-month fc-past" data-date="2023-06-29"></td><td class="fc-day fc-widget-content fc-fri fc-other-month fc-past" data-date="2023-06-30"></td><td class="fc-day fc-widget-content fc-sat fc-past" data-date="2023-07-01"></td></tr></tbody></table></div><div class="fc-content-skeleton"><table><thead><tr><td class="fc-day-number fc-sun fc-other-month fc-past" data-date="2023-06-25">25</td><td class="fc-day-number fc-mon fc-other-month fc-past" data-date="2023-06-26">26</td><td class="fc-day-number fc-tue fc-other-month fc-past" data-date="2023-06-27">27</td><td class="fc-day-number fc-wed fc-other-month fc-past" data-date="2023-06-28">28</td><td class="fc-day-number fc-thu fc-other-month fc-past" data-date="2023-06-29">29</td><td class="fc-day-number fc-fri fc-other-month fc-past" data-date="2023-06-30">30</td><td class="fc-day-number fc-sat fc-past" data-date="2023-07-01">1</td></tr></thead><tbody><tr><td></td><td></td><td></td><td></td><td></td><td></td><td class="fc-event-container"><a class="fc-day-grid-event fc-h-event fc-event fc-start fc-end fc-draggable fc-resizable" style="background-color:#00acac;border-color:#00acac"><div class="fc-content"> <span class="fc-title">All Day Event</span></div><div class="fc-resizer fc-end-resizer"></div></a></td></tr></tbody></table></div></div><div class="fc-row fc-week fc-widget-content fc-rigid" style="height: 51px;"><div class="fc-bg"><table><tbody><tr><td class="fc-day fc-widget-content fc-sun fc-past" data-date="2023-07-02"></td><td class="fc-day fc-widget-content fc-mon fc-past" data-date="2023-07-03"></td><td class="fc-day fc-widget-content fc-tue fc-past" data-date="2023-07-04"></td><td class="fc-day fc-widget-content fc-wed fc-past" data-date="2023-07-05"></td><td class="fc-day fc-widget-content fc-thu fc-past" data-date="2023-07-06"></td><td class="fc-day fc-widget-content fc-fri fc-past" data-date="2023-07-07"></td><td class="fc-day fc-widget-content fc-sat fc-past" data-date="2023-07-08"></td></tr></tbody></table></div><div class="fc-content-skeleton"><table><thead><tr><td class="fc-day-number fc-sun fc-past" data-date="2023-07-02">2</td><td class="fc-day-number fc-mon fc-past" data-date="2023-07-03">3</td><td class="fc-day-number fc-tue fc-past" data-date="2023-07-04">4</td><td class="fc-day-number fc-wed fc-past" data-date="2023-07-05">5</td><td class="fc-day-number fc-thu fc-past" data-date="2023-07-06">6</td><td class="fc-day-number fc-fri fc-past" data-date="2023-07-07">7</td><td class="fc-day-number fc-sat fc-past" data-date="2023-07-08">8</td></tr></thead><tbody><tr><td></td><td></td><td></td><td></td><td></td><td class="fc-event-container" colspan="2"><a class="fc-day-grid-event fc-h-event fc-event fc-start fc-not-end fc-draggable"><div class="fc-content"> <span class="fc-title">Long Event</span></div></a></td></tr></tbody></table></div></div><div class="fc-row fc-week fc-widget-content fc-rigid" style="height: 51px;"><div class="fc-bg"><table><tbody><tr><td class="fc-day fc-widget-content fc-sun fc-past" data-date="2023-07-09"></td><td class="fc-day fc-widget-content fc-mon fc-past" data-date="2023-07-10"></td><td class="fc-day fc-widget-content fc-tue fc-past" data-date="2023-07-11"></td><td class="fc-day fc-widget-content fc-wed fc-past" data-date="2023-07-12"></td><td class="fc-day fc-widget-content fc-thu fc-past" data-date="2023-07-13"></td><td class="fc-day fc-widget-content fc-fri fc-today fc-state-highlight" data-date="2023-07-14"></td><td class="fc-day fc-widget-content fc-sat fc-future" data-date="2023-07-15"></td></tr></tbody></table></div><div class="fc-content-skeleton"><table><thead><tr><td class="fc-day-number fc-sun fc-past" data-date="2023-07-09">9</td><td class="fc-day-number fc-mon fc-past" data-date="2023-07-10">10</td><td class="fc-day-number fc-tue fc-past" data-date="2023-07-11">11</td><td class="fc-day-number fc-wed fc-past" data-date="2023-07-12">12</td><td class="fc-day-number fc-thu fc-past" data-date="2023-07-13">13</td><td class="fc-day-number fc-fri fc-today fc-state-highlight" data-date="2023-07-14">14</td><td class="fc-day-number fc-sat fc-future" data-date="2023-07-15">15</td></tr></thead><tbody><tr><td class="fc-event-container fc-limited"><a class="fc-day-grid-event fc-h-event fc-event fc-not-start fc-end fc-draggable fc-resizable"><div class="fc-content"> <span class="fc-title">Long Event</span></div><div class="fc-resizer fc-end-resizer"></div></a></td><td class="fc-more-cell" rowspan="1"><div><a class="fc-more">+2 more</a></div></td><td rowspan="6"></td><td class="fc-event-container fc-limited" colspan="2"><a class="fc-day-grid-event fc-h-event fc-event fc-start fc-end fc-draggable fc-resizable"><div class="fc-content"> <span class="fc-title">Conference</span></div><div class="fc-resizer fc-end-resizer"></div></a></td><td class="fc-more-cell" rowspan="1"><div><a class="fc-more">+1 more</a></div></td><td class="fc-more-cell" rowspan="1"><div><a class="fc-more">+6 more</a></div></td><td class="fc-event-container" rowspan="6"><a class="fc-day-grid-event fc-h-event fc-event fc-start fc-end fc-draggable"><div class="fc-content"><span class="fc-time">7a</span> <span class="fc-title">Birthday Party</span></div></a></td><td rowspan="6"></td><td rowspan="6"></td></tr><tr class="fc-limited"><td class="fc-event-container" rowspan="5"><a class="fc-day-grid-event fc-h-event fc-event fc-start fc-end fc-draggable" style="background-color:#00acac;border-color:#00acac"><div class="fc-content"><span class="fc-time">4p</span> <span class="fc-title">Repeating Event</span></div></a></td><td rowspan="5"></td><td class="fc-event-container"><a class="fc-day-grid-event fc-h-event fc-event fc-start fc-end fc-draggable" style="background-color:#00acac;border-color:#00acac"><div class="fc-content"><span class="fc-time">10:30a</span> <span class="fc-title">Meeting</span></div></a></td></tr><tr class="fc-limited"><td class="fc-event-container"><a class="fc-day-grid-event fc-h-event fc-event fc-start fc-end fc-draggable" style="background-color:#348fe2;border-color:#348fe2"><div class="fc-content"><span class="fc-time">12p</span> <span class="fc-title">Lunch</span></div></a></td></tr><tr class="fc-limited"><td class="fc-event-container"><a class="fc-day-grid-event fc-h-event fc-event fc-start fc-end fc-draggable"><div class="fc-content"><span class="fc-time">2:30p</span> <span class="fc-title">Meeting</span></div></a></td></tr><tr class="fc-limited"><td class="fc-event-container"><a class="fc-day-grid-event fc-h-event fc-event fc-start fc-end fc-draggable"><div class="fc-content"><span class="fc-time">5:30p</span> <span class="fc-title">Happy Hour</span></div></a></td></tr><tr class="fc-limited"><td class="fc-event-container"><a class="fc-day-grid-event fc-h-event fc-event fc-start fc-end fc-draggable"><div class="fc-content"><span class="fc-time">8p</span> <span class="fc-title">Dinner</span></div></a></td></tr></tbody></table></div></div><div class="fc-row fc-week fc-widget-content fc-rigid" style="height: 51px;"><div class="fc-bg"><table><tbody><tr><td class="fc-day fc-widget-content fc-sun fc-future" data-date="2023-07-16"></td><td class="fc-day fc-widget-content fc-mon fc-future" data-date="2023-07-17"></td><td class="fc-day fc-widget-content fc-tue fc-future" data-date="2023-07-18"></td><td class="fc-day fc-widget-content fc-wed fc-future" data-date="2023-07-19"></td><td class="fc-day fc-widget-content fc-thu fc-future" data-date="2023-07-20"></td><td class="fc-day fc-widget-content fc-fri fc-future" data-date="2023-07-21"></td><td class="fc-day fc-widget-content fc-sat fc-future" data-date="2023-07-22"></td></tr></tbody></table></div><div class="fc-content-skeleton"><table><thead><tr><td class="fc-day-number fc-sun fc-future" data-date="2023-07-16">16</td><td class="fc-day-number fc-mon fc-future" data-date="2023-07-17">17</td><td class="fc-day-number fc-tue fc-future" data-date="2023-07-18">18</td><td class="fc-day-number fc-wed fc-future" data-date="2023-07-19">19</td><td class="fc-day-number fc-thu fc-future" data-date="2023-07-20">20</td><td class="fc-day-number fc-fri fc-future" data-date="2023-07-21">21</td><td class="fc-day-number fc-sat fc-future" data-date="2023-07-22">22</td></tr></thead><tbody><tr><td class="fc-event-container"><a class="fc-day-grid-event fc-h-event fc-event fc-start fc-end fc-draggable"><div class="fc-content"><span class="fc-time">4p</span> <span class="fc-title">Repeating Event</span></div></a></td><td></td><td></td><td></td><td></td><td></td><td></td></tr></tbody></table></div></div><div class="fc-row fc-week fc-widget-content fc-rigid" style="height: 51px;"><div class="fc-bg"><table><tbody><tr><td class="fc-day fc-widget-content fc-sun fc-future" data-date="2023-07-23"></td><td class="fc-day fc-widget-content fc-mon fc-future" data-date="2023-07-24"></td><td class="fc-day fc-widget-content fc-tue fc-future" data-date="2023-07-25"></td><td class="fc-day fc-widget-content fc-wed fc-future" data-date="2023-07-26"></td><td class="fc-day fc-widget-content fc-thu fc-future" data-date="2023-07-27"></td><td class="fc-day fc-widget-content fc-fri fc-future" data-date="2023-07-28"></td><td class="fc-day fc-widget-content fc-sat fc-future" data-date="2023-07-29"></td></tr></tbody></table></div><div class="fc-content-skeleton"><table><thead><tr><td class="fc-day-number fc-sun fc-future" data-date="2023-07-23">23</td><td class="fc-day-number fc-mon fc-future" data-date="2023-07-24">24</td><td class="fc-day-number fc-tue fc-future" data-date="2023-07-25">25</td><td class="fc-day-number fc-wed fc-future" data-date="2023-07-26">26</td><td class="fc-day-number fc-thu fc-future" data-date="2023-07-27">27</td><td class="fc-day-number fc-fri fc-future" data-date="2023-07-28">28</td><td class="fc-day-number fc-sat fc-future" data-date="2023-07-29">29</td></tr></thead><tbody><tr><td></td><td></td><td></td><td></td><td></td><td class="fc-event-container"><a class="fc-day-grid-event fc-h-event fc-event fc-start fc-end fc-draggable fc-resizable" href="http://google.com/" style="background-color:#ff5b57;border-color:#ff5b57"><div class="fc-content"> <span class="fc-title">Click for Google</span></div><div class="fc-resizer fc-end-resizer"></div></a></td><td></td></tr></tbody></table></div></div><div class="fc-row fc-week fc-widget-content fc-rigid" style="height: 55px;"><div class="fc-bg"><table><tbody><tr><td class="fc-day fc-widget-content fc-sun fc-future" data-date="2023-07-30"></td><td class="fc-day fc-widget-content fc-mon fc-future" data-date="2023-07-31"></td><td class="fc-day fc-widget-content fc-tue fc-other-month fc-future" data-date="2023-08-01"></td><td class="fc-day fc-widget-content fc-wed fc-other-month fc-future" data-date="2023-08-02"></td><td class="fc-day fc-widget-content fc-thu fc-other-month fc-future" data-date="2023-08-03"></td><td class="fc-day fc-widget-content fc-fri fc-other-month fc-future" data-date="2023-08-04"></td><td class="fc-day fc-widget-content fc-sat fc-other-month fc-future" data-date="2023-08-05"></td></tr></tbody></table></div><div class="fc-content-skeleton"><table><thead><tr><td class="fc-day-number fc-sun fc-future" data-date="2023-07-30">30</td><td class="fc-day-number fc-mon fc-future" data-date="2023-07-31">31</td><td class="fc-day-number fc-tue fc-other-month fc-future" data-date="2023-08-01">1</td><td class="fc-day-number fc-wed fc-other-month fc-future" data-date="2023-08-02">2</td><td class="fc-day-number fc-thu fc-other-month fc-future" data-date="2023-08-03">3</td><td class="fc-day-number fc-fri fc-other-month fc-future" data-date="2023-08-04">4</td><td class="fc-day-number fc-sat fc-other-month fc-future" data-date="2023-08-05">5</td></tr></thead><tbody><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr></tbody></table></div></div></div></div></td></tr></tbody></table></div></div></div>
 </div>
  
    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Bootstrap core JavaScript-->
    <script src="/resources/sb/vendor/jquery/jquery.min.js"></script>
    <script src="/resources/sb/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="/resources/sb/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="/resources/sb/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="/resources/sb/vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="/resources/sb/vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="/resources/sb/js/demo/datatables-demo.js"></script>

</body>

</html>
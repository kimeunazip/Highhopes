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
	 </div>
<!-- 
<body id="page-top">
            Main Content
            <div id="content">
                Begin Page Content
                <div class="container-fluid">
 -->
                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">Tables</h1>
                    <p class="mb-4">DataTables is a third party plugin that is used to generate the demo table below.
                        For more information about DataTables, please visit the <a target="_blank"
                            href="https://datatables.net">official DataTables documentation</a>.</p>

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
<!-- 
                </div>
                /.container-fluid

            </div>
            End of Main Content
 -->
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
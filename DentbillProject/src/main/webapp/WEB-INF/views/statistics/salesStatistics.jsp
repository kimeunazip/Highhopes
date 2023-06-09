<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <div class="container-fluid">
		        	   <!-- 당일 거래 통계  -->
		            <div class="row">
		            	<!-- 통계 -->
		            <!--  Row 1 -->
		            <div class="row">
		            	<!-- 1.매출통계 한눈에 보기  -->
		                <div class="col-lg-8 d-flex align-items-strech">
		                    <div class="card w-100">
		                        <div class="card-body">
		                            <div class="d-sm-flex d-block align-items-center justify-content-between mb-9">
		                                <div class="mb-3 mb-sm-0">
		                                    <h5 class="card-title fw-semibold">Sales Overview<span style="font-size: 9px;">&nbsp&nbsp매출통계 한눈에 보기</span></h5>
		                                </div>
		                                <div>
		                                    <select class="form-select">
		                                        <option value="1">March 2023</option>
		                                        <option value="2">April 2023</option>
		                                        <option value="3">May 2023</option>
		                                        <option value="4">June 2023</option>
		                                    </select>
		                                </div>
		                            </div>
		                            <div id="chart"></div>
		                        </div>
		                    </div>
		                </div>
		                
		                <!-- 2.연간/월간 통계  -->
		                <div class="col-lg-4">
		                    <div class="row">
		                        <div class="col-lg-12">
		                            <!-- Yearly Breakup -->
		                            <div class="card overflow-hidden">
		                                <div class="card-body p-4">
		                                    <h5 class="card-title mb-9 fw-semibold">Yearly Breakup<span style="font-size: 9px;">&nbsp&nbsp연간매출</span></h5>
		                                    <div class="row align-items-center">
		                                        <div class="col-8">
		                                            <h4 class="fw-semibold mb-3">$36,358</h4>
		                                            <div class="d-flex align-items-center mb-3">
								                        <span class="me-1 rounded-circle bg-light-success round-20 d-flex align-items-center justify-content-center">
								                           <i class="ti ti-arrow-up-left text-success"></i>
								                        </span>
		                                                <p class="text-dark me-1 fs-3 mb-0">+9%</p>
		                                                <p class="fs-3 mb-0">작년대비</p>
		                                            </div>
		                                            <div class="d-flex align-items-center">
		                                                <div class="me-4">
		                                                    <span class="round-8 bg-primary rounded-circle me-2 d-inline-block"></span>
		                                                    <span class="fs-2">2023</span>
		                                                </div>
		                                                <div>
		                                                    <span class="round-8 bg-light-primary rounded-circle me-2 d-inline-block"></span>
		                                                    <span class="fs-2">2023</span>
		                                                </div>
		                                            </div>
		                                        </div>
		                                        <div class="col-4">
		                                            <div class="d-flex justify-content-center">
		                                                <div id="breakup"></div>
		                                            </div>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                        <div class="col-lg-12">
		                            <!-- Monthly Earnings -->
		                            <div class="card">
		                                <div class="card-body">
		                                    <div class="row alig n-items-start">
		                                        <div class="col-8">
		                                            <h5 class="card-title mb-9 fw-semibold"> Monthly Earnings<span style="font-size: 9px;">&nbsp&nbsp월간매출</span></h5>
		                                            <h4 class="fw-semibold mb-3">$6,820</h4>
		                                            <div class="d-flex align-items-center pb-1">
		                          <span
		                                  class="me-2 rounded-circle bg-light-danger round-20 d-flex align-items-center justify-content-center">
		                            <i class="ti ti-arrow-down-right text-danger"></i>
		                          </span>
		                                                <p class="text-dark me-1 fs-3 mb-0">+9%</p>
		                                                <p class="fs-3 mb-0">전월대비</p>
		                                            </div>
		                                        </div>
		                                        <div class="col-4">
		                                            <div class="d-flex justify-content-end">
		                                                <div
		                                                        class="text-white bg-secondary rounded-circle p-6 d-flex align-items-center justify-content-center">
		                                                    <i class="ti ti-currency-dollar fs-6"></i>
		                                                </div>
		                                            </div>
		                                        </div>
		                                    </div>
		                                </div>
		                                <div id="earning"></div>
		                            </div>
		                        </div>
		                    </div>
		                </div>
		                <!-- 1. 오늘 접수 명단 -보철별 -->
		                <div class="col-lg-12 d-flex align-items-stretch">
		                    <div class="card w-100">
		                        <div class="card-body p-4">
		                            <h5 class="card-title fw-semibold mb-4">Today`s Transactions<span style="font-size: 9px;">&nbsp&nbsp오늘의 거래 내역</span></h5>
		                            <div class="table-responsive">
		                                <table class="table text-nowrap mb-0 align-middle">
		                                    <thead class="text-dark fs-4">
		                                    <tr>
		                                        <th class="border-bottom-0">
		                                            <h6 class="fw-semibold mb-0">순위</h6>
		                                        </th>
		                                        <th class="border-bottom-0">
		                                            <h6 class="fw-semibold mb-0">보철명</h6>
		                                        </th>
		                                        <th class="border-bottom-0">
		                                            <h6 class="fw-semibold mb-0">수량</h6>
		                                        </th>
		                                        <th class="border-bottom-0">
		                                            <h6 class="fw-semibold mb-0">매출합계</h6>
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
		                                    </tr>
		                                    </tbody>
		                                </table>
		                            </div>
		                        </div>
		                    </div>
		                </div>
		                 <!-- 2. 오늘 접수 명단 - 치과별 -->
		                <div class="col-lg-12 d-flex align-items-stretch">
		                    <div class="card w-100">
		                        <div class="card-body p-4">
		                            <h5 class="card-title fw-semibold mb-4">Today`s Transactions<span style="font-size: 9px;">&nbsp&nbsp오늘의 거래 내역</span></h5>
		                            <div class="table-responsive">
		                                <table class="table text-nowrap mb-0 align-middle">
		                                    <thead class="text-dark fs-4">
		                                    <tr>
		                                        <th class="border-bottom-0">
		                                            <h6 class="fw-semibold mb-0">순위</h6>
		                                        </th>
		                                        <th class="border-bottom-0">
		                                            <h6 class="fw-semibold mb-0">보철명</h6>
		                                        </th>
		                                        <th class="border-bottom-0">
		                                            <h6 class="fw-semibold mb-0">수량</h6>
		                                        </th>
		                                        <th class="border-bottom-0">
		                                            <h6 class="fw-semibold mb-0">매출합계</h6>
		                                        </th>
		                                    </tr>
		                                    </thead>
		                                    <tbody>
		                                    <tr>
		                                    <!--  
		                                    
		                                    	<c:forEach var="partnerVO" items="${partnerList}" varStatus="status">
		                                    <h6 class="fw-semibold mb-1">${partnerVO.partner_name}</h6>
		                                    </c:forEach>
		                                    -->
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
		                                    </tr>
		                                    </tbody>
		                                </table>
		                            </div>
		                        </div>
		                    </div>
		                </div>
		            </div>
		            
		        
		            </div>
		        </div>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!-- Sidebar scroll-->
		        <div>
		            <div class="brand-logo d-flex align-items-center justify-content-between">
		                <a href="/" class="text-nowrap logo-img">
		                    <img src="/resources/images/logos/dark-logo.png" width="180" alt="" />
		                </a>
		                <div class="close-btn d-xl-none d-block sidebartoggler cursor-pointer" id="sidebarCollapse">
		                    <i class="ti ti-x fs-8"></i>
		                </div>
		            </div>
		            <!-- Sidebar navigation-->
		            <nav class="sidebar-nav scroll-sidebar" data-simplebar="">
		                <ul id="sidebarnav">
		                
		                	<!-- 1.Home -->
		                    <li class="nav-small-cap">
		                        <i class="ti ti-dots nav-small-cap-icon fs-4"></i>
		                        <span class="hide-menu">Home</span>
		                    </li>
		                    <li class="sidebar-item">
		                        <a class="sidebar-link" href="/afterLogin" aria-expanded="false">
					                <span>
					                  <i class="ti ti-layout-dashboard"></i>
					                </span>
		                            <span class="hide-menu">모아보기</span>
		                        </a>
		                    </li>
		                    
		                    <!-- 2.Transaction -->
		                    <li class="nav-small-cap">
		                        <i class="ti ti-dots nav-small-cap-icon fs-4"></i>
		                        <span class="hide-menu">Transaction</span>
		                    </li>
		                    <li class="sidebar-item">
		                        <a class="sidebar-link" href="/transactionList" aria-expanded="false">
					                <span>
					                  <i class="ti ti-list-check"></i>
					                </span>
		                            <span class="hide-menu">접수명단</span>
		                        </a>
		                    </li>
		                    <li class="sidebar-item">
		                        <a class="sidebar-link" href="/transactionStatement" aria-expanded="false">
				                <span>
				                  <i class="ti ti-article"></i>
				                </span>
	                            <span class="hide-menu">거래명세서</span>
		                        </a>
		                    </li>
		                     
			                <!-- 3.Statistics -->  
		                    <li class="nav-small-cap">
		                        <i class="ti ti-dots nav-small-cap-icon fs-4"></i>
		                        <span class="hide-menu">Statistics</span>
		                    </li>
		                    <li class="sidebar-item">
		                        <a class="sidebar-link" href="/salesStatistics" aria-expanded="false">
					                <span>
					                  <i class="ti ti-aperture"></i>
					                </span>
		                            <span class="hide-menu">매출통계</span>
		                        </a>
		                    </li>
		                    <li class="sidebar-item">
		                        <a class="sidebar-link" href="/transationStatistics" aria-expanded="false">
					                <span>
					                  <i class="ti ti-cards"></i>
					                </span>
		                            <span class="hide-menu">거래통계</span>
		                        </a>
		                    </li>
	                      	<!-- 4.Management -->  
		                    <li class="nav-small-cap">
		                        <i class="ti ti-dots nav-small-cap-icon fs-4"></i>
		                        <span class="hide-menu">Management</span>
		                    </li>
		                    <li class="sidebar-item">
		                        <a class="sidebar-link" href="/partnersManagement" aria-expanded="false">
					                <span>
					                  <i class="ti ti-user-plus"></i>
					                </span>
		                            <span class="hide-menu">거래처관리</span>
		                        </a>
		                    </li>
		                      <li class="sidebar-item">
		                        <a class="sidebar-link" href="/costManagement" aria-expanded="false">
					                <span>
					                  <i class="ti ti-file-description"></i>
					                </span>
		                            <span class="hide-menu">경비관리</span>
		                        </a>
		                    </li>
		                </ul>
		            </nav>
		            <!-- End Sidebar navigation -->
		        </div>
		        <!-- End Sidebar scroll-->
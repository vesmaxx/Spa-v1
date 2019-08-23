<%@ page language="java" contentType="text/html; charset=Utf-8"
	pageEncoding="Utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>


 <jsp:include page="../include/_head.jsp"></jsp:include>

 <div class="container-fluid">



 	<!-- Page Heading -->
	<h1 style="margin-left: 70px" class="h3 mb-2 text-gray-800">Tables</h1>


 	<!-- DataTales Example -->
	<div class="card shadow mb-4">

 		<div class="card-body">
			<div class="table-responsive">
				<table id="example" class="table table-striped table-bordered"
					style="width: 100%">
					<thead>
						<tr>
							<th>Name</th>
							<th>Sevice</th>
							<th>Number</th>
							<th>Date</th>
							<th>House</th>
							<th>Location</th>
							<th>Round</th>
							<th>Status</th>
							<th>Action</th>


 						</tr>
					</thead>

 					<tbody>
						<c:forEach items="${admin }" var="item">

 							<tr>

 								<td>${item.users.name }</td>
								<td>${item.services.name }</td>
								<td>${item.number } Preson</td>
								
								<c:set var="string" value=" ${item.date }"/>  
  
								
								<td>${fn:substring(string, 0, 12)} </td>
								<td>${item.minute } : ${item.seconds }</td>
								<td>
								<c:choose>
								<c:when test="${item.location == 1}"> 1 ngày</c:when>
								<c:when test="${item.location == 2}"> 2 ngày</c:when>
								<c:when test="${item.location == 3}"> 3 ngày</c:when>
								<c:when test="${item.location == 4}"> 4 ngày</c:when>
								
								<c:otherwise>5 ngày</c:otherwise>
								</c:choose>
								</td>
								<td>
								<c:choose>
								<c:when test="${item.round == 0}"> Làm tại quán</c:when>
								<c:otherwise>Làm tại nhà</c:otherwise>
								</c:choose>
								</td>
								
								<td>
								<c:choose>
								<c:when test="${item.orderStatus==0}">thanh toán</c:when>
								<c:when test="${item.orderStatus == 1}">hoạt động</c:when>
								
								
								<c:otherwise>Đang chờ</c:otherwise>
								</c:choose>
								</td>
								<td>
									
									<a
										class=" btn btn-primary  "
										href="confirm/${item.id }"
										><i class="fa fa-check" aria-hidden="true"></i>
									</a>
									
									<a
										class=" btn btn-success w "
										href="Success/${item.id }"
										><i class="fa fa-cart-plus" aria-hidden="true"></i>
									</a>
								</td>

 							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
<jsp:include page="../include/_footer.jsp"></jsp:include>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<jsp:include page="include/_head.jsp"></jsp:include>

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
							<th>Sevice</th>
							<th>Number</th>
							<th>Date</th>
							<th>House</th>
							<th>Location</th>
							<th>Round</th>
							<th>Status</th>

							<th>Total</th>



						</tr>
					</thead>

					<tbody>
						<c:forEach items="${admin }" var="item">

							<tr>

								<td>${item[5]}</td>
								<td>${item[3] }</td>
								<td>${item[0] }</td>
								<td>${item[1] }:${item[2] }</td>
								<td><c:choose>
										<c:when test="${item[4] == 0}"> Làm tại quán</c:when>
										<c:otherwise>Làm tại nhà</c:otherwise>
									</c:choose></td>
								<td><c:choose>
										<c:when test="${item[7] == 1}"> 1 ngày</c:when>
										<c:when test="${item[7] == 2}"> 2 ngày</c:when>
										<c:when test="${item[7] == 3}"> 3 ngày</c:when>
										<c:when test="${item[7] == 4}"> 4 ngày</c:when>

										<c:otherwise>5 ngày</c:otherwise>
									</c:choose></td>

								<td><c:choose>
										<c:when test="${item[8] == 0}"> Đã thanh toán</c:when>
										<c:when test="${item[8] == 1}">Đang hoạt động</c:when>
										<c:otherwise>Đang chờ</c:otherwise>
									</c:choose></td>
								<td><c:choose>
										<c:when test="${item[4] == 0}"> ${item[3]*item[6]}</c:when>
										<c:otherwise>${item[3]*item[6]}</c:otherwise>
									</c:choose></td>


							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>


<jsp:include page="include/_footer.jsp"></jsp:include>
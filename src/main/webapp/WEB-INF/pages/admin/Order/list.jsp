<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
							
							<th>Trang thai</th>
							<th>Action</th>


 						</tr>
					</thead>

 					<tbody>
						<c:forEach items="${admin }" var="item">

 							<tr>

 								<td>${item.users.name }</td>
								<td>${item.services.name }</td>
								<td>${item.number }</td>
								<td>${item.date }</td>
								<td>${item.minute } : ${item.seconds }</td>
								<td>${item.orderStatus }</td>
								<td>
									
									<a
										class=" btn btn-danger waves-effect "
										href="duyet/${item.id }"
										>duyet
										<i class="fa fa-trash"></i>
									</a>
									<a
										class=" btn btn-danger waves-effect waves-light"
										href="tuchoi/${item.id }"
										title="thanh toán">thanh toan
										<i class="fa fa-trash"></i>
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
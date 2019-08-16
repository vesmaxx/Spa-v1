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
							<th>Times</th>
							<th>Trạng thái</th>
							<th>Action</th>


						</tr>
					</thead>

					<tbody>
						<c:forEach items="${admin }" var="item">

							<tr>

								<td>${item.users.name }</td>
								<td>${item.services.name }</td>
								<td>${item.number }</td>
								<td>${item.times }</td>
								<td>${item.orderStatus }</td>
								<td>
									<button class="btn btn-primary">
										<i class="fa fa-edit"></i>
									</button>
									<button
										class=" btn btn-danger waves-effect waves-light"
										data-href="duyet/${item.id }"
										title="duyệt">duyệt
										<i class="fa fa-trash"></i>
									</button>
									<button
										class=" btn btn-danger waves-effect waves-light"
										data-href="tuchoi/${item.id }"
										title="thanh toán">thanh toán
										<i class="fa fa-trash"></i>
									</button>
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

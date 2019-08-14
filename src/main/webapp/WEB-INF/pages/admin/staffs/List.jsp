<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="../include/_head.jsp"></jsp:include>

<div class="container-fluid">


	<div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div style="top: 25%;" class="modal-dialog">
			<div style="border-radius: 10px" class="modal-content">

				<div
					style="padding: 10px 40px 10px 20px; background-color: #fb0404; border-top-left-radius: 10px; border-top-right-radius: 10px;"
					class="modal-header">

					<h2
						style="font-size: 28px; color: #fff; margin-left: 30%; text-align: center;"
						class="modal-title" id="myModalLabel">Delete confirm</h2>
				</div>



				<div class="modal-body">

					<p style="text-align: center; font-size: 19px;">Are you sure to
						delete this item?</p>
					<p
						style="text-align: center; font-style: italic; font-weight: bold;"
						id="name2"></p>
					<p class="debug-url"></p>
				</div>

				<div class="modal-footer">
					<button type="button" class="btn btn-basic" data-dismiss="modal">Cancel</button>
					<a style="margin-right: 40%" class="btn btn-danger btn-ok">Delete</a>
				</div>
			</div>
		</div>
	</div>


	<script>
		$('#confirm-delete').on(
				'show.bs.modal',
				function(e) {
					$(this).find('.btn-ok').attr('href',
							$(e.relatedTarget).data('href'));
					$('#name2').text($('#name').html())
				});
		setTimeout(function() {
			$('#HidemyDIV').fadeOut('slow');
		}, 1000);
	</script>


	<!-- Page Heading -->
	<a class="btn btn-primary" href="staffs-add">
										Thêm nhân viên
									</a>


	<!-- DataTales Example -->
	<div class="card shadow mb-4">
		<div class="card-body">
			<div class="table-responsive">
				<table id="example" class="table table-striped table-bordered"
					style="width: 100%">
					<thead>
						<tr>
							<th>Name</th>
							<th>Gender</th>
							<th>Photo</th>
							<th>Email</th>
							<th>Action</th>
						</tr>
					</thead>

					<tbody>
						<c:forEach items="${staffs}" var="item">
							<tr>
								<td>${item.name }</td>
								<td>${item.gender ? 'Nam' : 'Nữ'}</td>
								<td><img alt="Image" width="150px" height="150px" src="${pageContext.request.contextPath}/resources/assets/img/${item.photo}"></td>
								<td>${item.email}</td>
								<td>
									<a class="btn btn-primary" href="staffs-update/${item.id }">
										<i class="fa fa-edit"></i>
									</a>
									<button
										class="tabledit-delete-button btn btn-danger waves-effect waves-light"
										data-href="staffs-delete/${item.id }" data-toggle="modal"
										data-target="#confirm-delete">
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

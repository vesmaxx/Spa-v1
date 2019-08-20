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


	<form action="createImage" method="post" enctype="multipart/form-data">
		<div class="modal fade" id="confirm-add" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div style="top: 17%;" class="modal-dialog">
				<div style="border-radius: 10px" class="modal-content">

					<div
						style="padding: 10px 40px 10px 20px; background-color: #4e73df; border-top-left-radius: 10px; border-top-right-radius: 10px;"
						class="modal-header">

						<h2
							style="font-size: 28px; color: #fff; margin-left: 30%; text-align: center;"
							class="modal-title" id="myModalLabel">Add banner</h2>
					</div>
					<div class="modal-body">

						<label style="margin-left: 20px" class="mr-sm-2" >Title</label> <input type="text" class="form-control"
							name="FieldTitle"> <label style="margin-left: 20px" class="mr-sm-2">Content</label> <input
							type="text" class="form-control" name="FieldContent"> <label style="margin-left: 20px" class="mr-sm-2">Description</label>
						<input type="text" class="form-control" name="FieldDescription">
						<label style="margin-left: 20px" class="mr-sm-2">Image</label> <input type="file" class="form-control"
							name="FieldPhoto">

						<p style="text-align: center; font-size: 19px;"></p>
						<p
							style="text-align: center; font-style: italic; font-weight: bold;"
							id="name2"></p>
						<p class="debug-url"></p>
					</div>

					<div class="modal-footer">
						<button type="button" class="btn btn-warning" data-dismiss="modal">Cancel</button>
						<button style="margin-right: 40%" class="btn btn-success btn-ok">Add</button>
					</div>
				</div>
			</div>
		</div>
	</form>






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
	<button style="width: 90px; margin-left: 2%" type="submit"
		class="btn btn-success" href="staffs-add"
		data-href="image-delete/${item.id }" data-toggle="modal"
		data-target="#confirm-add">New</button>







	<div class="row">
		<c:forEach items="${image}" var="item">

			<div class="col-xl-4" style="padding-top: 20px"
				data-href="image-delete/${item.id }" data-toggle="modal"
				data-target="#confirm-delete">
				<div class="card border-left-primary shadow h-100 py-2">
					<div class="card-body">
						<div class="row no-gutters align-items-center">
							<div class="col mr-2">
								<div style="margin-left: 15px"
									class="h5 mb-0 font-weight-bold text-gray-800">${item.title }</div>
								<div style="margin-left: 7px; padding-top: 8px"
									class="text-xs font-weight-bold text-primary text-uppercase mb-1">${item.title }</div>

								<div style="padding-top: 8px"
									class="h5 mb-0 font-weight-bold text-gray-800">
									<img alt="Image" width="350px" height="150px"
										src="${pageContext.request.contextPath}/resources/assets/img/${item.photo}">
								</div>
							</div>
							<div class="col-auto">

								<%-- <i class="fas fa-trash fa-2x text-gray-300"
									data-href="image-delete/${item.id }" data-toggle="modal"
									data-target="#confirm-delete"></i>
								</button> --%>

							</div>
						</div>
					</div>
				</div>
			</div>

		</c:forEach>

	</div>













</div>
<jsp:include page="../include/_footer.jsp"></jsp:include>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
							<th>Email</th>
							<th>Action</th>


						</tr>
					</thead>

					<tbody>
						<c:forEach items="${service }" var="item">

							<tr>

								<td>${item.name }</td>
								<td>${item.price }</td>
								<td>
									<button class="btn btn-primary">
										<i class="fa fa-edit"></i>
									</button>
									<button
										class="tabledit-delete-button btn btn-danger waves-effect waves-light"
										data-href="user-delete/${item.id }" data-toggle="modal"
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

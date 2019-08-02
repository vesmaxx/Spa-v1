<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="../include/_head.jsp"></jsp:include>

<div class="container-fluid">

	<!-- Page Heading -->
	<h1 style="margin-left: 70px" class="h3 mb-2 text-gray-800">Tables</h1>


	<!-- DataTales Example -->
	<div class="card shadow mb-4">
		<div class="card-header py-3">
			<button class="btn btn-success" style="float: right;">
				<i class="fa fa-plus"> New</i>
			</button>
		</div>
		<div class="card-body">
			<div class="table-responsive">
				<table id="example" class="table table-striped table-bordered"
					style="width: 100%">
					<thead>
						<tr>
							<th>Name</th>
							<th>Email</th>
							<th>Birthday</th>
							<th>Role</th>
							<th>Action</th>


						</tr>
					</thead>

					<tbody>
						<c:forEach items="${admin }" var="item">
							<tr>
								<td>${item.name }</td>
								<td>${item.email }</td>
								<td>${item.birthday }</td>
								<td>${item.roles }</td>
								<td style="margin: 90px">
									<button class="btn btn-primary">
										<i class="fa fa-edit"></i>
									</button>
									 <a data-toggle="modal" data-target="#confirm-delete"
										class="btn btn-danger"
										
										href="Delete/${item.id}"	
										>
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


	<!-- 		<script>
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
			</script> -->

<%-- <div style="margin: 0 20px;" id="HidemyDIV"
	class="alert alert-success fade in">
	<a href="#" class="close" data-dismiss="alert">&times;</a> <strong
		style="padding-left: 60px;">${msg }</strong>

</div> --%>


<div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div style="top: 25%;" class="modal-dialog">
		<div style="border-radius: 10px" class="modal-content">

			<div
				style="background-color: #3394de; border-top-left-radius: 10px; border-top-right-radius: 10px;"
				class="modal-header">
				
				<h2 style="font-size: 28px; padding-left: 30% ;color: #fff; text-align: center;"
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
				<button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
				<a style="margin-right: 40%" class="btn btn-danger btn-ok">Delete</a>
			</div>
		</div>
	</div>
</div>


<jsp:include page="../include/_footer.jsp"></jsp:include>

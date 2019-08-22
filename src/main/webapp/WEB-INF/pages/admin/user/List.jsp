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
	
	<script>

		
 function clickEvt(name,email,birth) {
			  $('#FieldName').val(name)
			  $('#FieldEmail').val(email)
			   $('#FieldBirthDay').val(birth)
		} 
		
	</script>
		
		
		
		<form action="update-user" method="post" enctype="multipart/form-data">
		<div class="modal fade" id="confirm-add" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div style="top: 17%;" class="modal-dialog">
				<div style="border-radius: 10px" class="modal-content">

					<div
						style="padding: 10px 40px 10px 20px; background-color: #4e73df; border-top-left-radius: 10px; border-top-right-radius: 10px;"
						class="modal-header">

						<h2
							style="font-size: 28px; color: #fff; margin-left: 30%; text-align: center;"
							class="modal-title" id="myModalLabel">Update User</h2>
					</div>
					<div class="modal-body">
					
					<label style="margin-left: 20px" class="mr-sm-2" >Email</label> 
						<input id="FieldEmail" type="text" class="form-control"
							name="FieldEmail"> 
						

						<label style="margin-left: 20px; margin-top: 10px" class="mr-sm-2" >Name</label> 
						<input id="FieldName" type="text" class="form-control"
							name="FieldName"> 
						
					
							
						<label style="margin-left: 20px ; margin-top: 10px" class="mr-sm-2">Birthday</label> 
						<input
							type="date" id="FieldBirthDay" class="form-control" name="FieldBirthDay"> 
						<label style="margin-left: 20px ; margin-top: 10px" class="mr-sm-2">Role</label>
						<input type="text" class="form-control" name="FieldDescription">
						
						

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

	<!-- Page Heading -->
	<h1 style="margin: 50px;" class="h3 mb-2 text-gray-800"></h1>
	

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
							<th>Birthday</th>
							<th>Role</th>
							<th>Action</th>


						</tr>
					</thead>

					<tbody>
						<c:forEach items="${admin}" var="item">

							<tr  >
								
								<td id ="name">${item.name }</td>
								<td id ="email">${item.email }</td>
								<td id="birthday">${item.birthday }</td>

								<c:choose>
									<c:when test="${item.roles=='1'}">
										<td id="role" >User</td>
									</c:when>
									<c:when test="${item.roles=='10'}">
										<td id="role">Admin</td>
									</c:when>
									<c:when test="${item.roles=='2'}">
										<td id="role">Mod</td>
									</c:when>
								</c:choose>
								<td>
									<button  onclick="clickEvt(`${item.name}`,`${item.email}`,`${item.birthday}`)" class="btn btn-primary update" 
										 data-toggle="modal"
										data-target="#confirm-add"
										
									>
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

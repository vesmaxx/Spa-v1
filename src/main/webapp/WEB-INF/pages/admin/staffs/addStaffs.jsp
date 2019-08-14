<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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

	<!-- DataTales Example -->
	<div class="card shadow mb-4">

		<div class="container">
			<h2>Thêm nhân viên</h2>
			<form class="form-horizontal" action="add-staffs" method="POST"
				enctype="multipart/form-data">
				<div class="form-group">
					<label class="control-label col-sm-2">Tên nhân viên:</label>
					<div class="col-sm-10">
						<input type="text" required class="form-control" id=""
							placeholder="Nhập tên nhân viên" name="name">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="pwd">Giới tính:</label>

					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" required class="custom-control-input" value="true"
							id="customRadio1" name="gender"> <label
							class="custom-control-label" for="customRadio1">Nam</label>
					</div>
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" required class="custom-control-input" value="false"
							id="customRadio2" name="gender"> <label
							class="custom-control-label" for="customRadio2">Nữ</label>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2"  for="pwd">Ngày sinh:</label>
					<div class="col-sm-10">
						<input type="date" class="form-control" required id="" name="birthday">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="pwd">Ảnh:</label>
					<div class="col-sm-10">
						<input type="file" required id="photo"
							accept="image/gif, image/jpeg, image/png" name="photo">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="pwd">Email:</label>
					<div class="col-sm-10">
						<input type="email" required class="form-control" id=""
							placeholder="Nhập email" name="email">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="pwd">Số điện
						thoại:</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id=""
						required	placeholder="Nhập số điện thoại" name="phone">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="pwd">Lương:</label>
					<div class="col-sm-10">
						<input type="number" required class="form-control" id=""
							placeholder="Nhập lương" name="salary">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<button type="submit" class="btn btn-default">Xác nhận</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
<jsp:include page="../include/_footer.jsp"></jsp:include>

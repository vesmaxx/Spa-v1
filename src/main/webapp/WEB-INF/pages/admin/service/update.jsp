<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
  <h2>Sửa dịch vụ</h2>
  <form class="form-horizontal" action="${pageContext.request.contextPath }/admin/service-update2" method="POST" enctype="multipart/form-data">
  <input  type="hidden" class="form-control" id="" value="${service.id}" placeholder="Nhập tên dịch vụ" name="id">
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">Tên dịch vụ:</label>
      <div class="col-sm-10">
        <input required type="text" class="form-control" value="${service.name }" id="" placeholder="Nhập tên dịch vụ" name="name">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Giá:</label>
      <div class="col-sm-10">          
        <input required type="number" class="form-control" value="${service.price }" id="" placeholder="Nhập giá dịch vụ" name="price">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Ảnh:</label>
      <div class="col-sm-10">          
        <input type="file" required  id="photo" accept="image/gif, image/jpeg, image/png" name="photo2">
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

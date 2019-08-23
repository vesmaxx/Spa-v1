<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<style>
@import url(https://fonts.googleapis.com/css?family=Roboto:400,700,300);

button {
	border: none;
	background: transparent;
}

.controller-container {
	margin-bottom: 5%;
	text-align: center;
}

.controller {
	user-select: none;
	display: inline-block;
	margin: 0 20px;
	font-size: 22px;
	padding: 10px 0;
	color: #FFF;
	position: relative;
	transition: all 100ms cubic-bezier(0.165, 0.84, 0.44, 1);
}

.controller:after {
	content: "";
	height: 3px;
	display: block;
	position: absolute;
	bottom: 0;
	width: 0;
	transition: all 300ms cubic-bezier(0.165, 0.84, 0.44, 1);
	background-color: #FFF;
}

.controller.is_current:after {
	width: 100%;
}

.controller:hover, .controller.is_current {
	transform: translate3d(0, -5px, 0);
	cursor: pointer;
}

.card {
	will-change: transform;
	margin: 8px;
	position: relative;
	border-radius: 2px;
	overflow: hidden;
	background-color: #fafafa;
	height: 35%;
	width: 344px;
	transition: all 400ms cubic-bezier(0.165, 0.84, 0.44, 1);
	box-shadow: 0 1px 4px 0 rgba(0, 0, 0, 0.37);
}

.card:hover {
	cursor: pointer;
}

.card__image {
	position: absolute;
	background-size: cover;
	background-position: center bottom;
	background-repeat: no-repat;
	width: 100%;
	height: 100%;
	overflow: hidden;
	display: block;
	opacity: 0;
	transition: all 200ms cubic-bezier(0.075, 0.82, 0.165, 1);
}

.card__image:after {
	content: "";
	display: block;
	position: absolute;
	background-color: rgba(0, 0, 0, 0.1);
	top: 0;
	left: 0;
	right: 0;
	transition: all 500ms;
	bottom: 0;
}

.card__title {
	user-select: none;
	font-size: 24px;
	color: #FFF;
	margin: 0;
	position: absolute;
	left: 0;
	right: 0;
	padding: 0 16px;
	font-weight: 400;
	white-space: nowrap;
	text-overflow: ellipsis;
	overflow: hidden;
	transition: all 200ms cubic-bezier(0.075, 0.82, 0.165, 1);
}

.card__subtitle {
	user-select: none;
	font-size: 14px;
	display: block;
	white-space: nowrap;
	text-overflow: ellipsis;
	overflow: hidden;
	color: #000;
	left: 88px;
	right: 0;
	top: 45px;
	position: absolute;
	padding: 0 16px;
	opacity: 0;
	transition: all 200ms cubic-bezier(0.075, 0.82, 0.165, 1);
}

.card__text {
	user-select: none;
	font-size: 14px;
	display: block;
	left: 0;
	right: 0;
	top: 100px;
	padding: 16px;
	margin: 0;
	line-height: 1.6;
	position: absolute;
	color: #000;
	overflow: hidden;
	transition: width 200ms cubic-bezier(0.075, 0.82, 0.165, 1);
	transition: delay 0.1s;
}

.card__role {
	user-select: none;
	font-size: 16px;
	color: #FFF;
	margin: 0;
	position: absolute;
	background-color: orange;
	border : 2px;
	right: 10px;
	padding: 7px;
	margin :10px;	
	font-weight: 400;
	white-space: nowrap;
	text-overflow: ellipsis;
	overflow: hidden;
	transition: all 200ms cubic-bezier(0.075, 0.82, 0.165, 1);
}

.card__action-bar {
	user-select: none;
	position: absolute;
	bottom: 0;
	top: auto;
	left: 0;
	right: 0;
	padding: 0 8px;
	border-top: 1px solid #E0E0E0;
	boz-sizing: border-box;
	height: 52px;
	transition: left 200ms cubic-bezier(0.075, 0.82, 0.165, 1);
}

.card__button {
	outline: none;
	position: relative;
	display: inline-block;
	line-height: 52px;
	padding: 0 16px;
	color: #ff1744;
}

.card--big {
	box-shadow: 0 27px 55px 0 rgba(0, 0, 0, 0.3), 0 17px 17px 0
		rgba(0, 0, 0, 0.15);
	height: 304px;
	min-height: 304px;
}

.card--big .card__image {
	border-radius: 1px 1px 0 0;
	left: 0;
	right: 0;
	top: 0;
	opacity: 1;
	max-height: 176px;
}

.card--big .card__title {
	top: 135px;
}

.card--big .card__text {
	top: 176px;
}

.card--big .card__action-bar {
	left: 0;
}


</style>

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

						<label style="margin-left: 20px" class="mr-sm-2">Title</label> <input
							type="text" class="form-control" name="FieldTitle"> <label
							style="margin-left: 20px" class="mr-sm-2">Content</label> <input
							type="text" class="form-control" name="FieldContent"> <label
							style="margin-left: 20px" class="mr-sm-2">Description</label> <input
							type="text" class="form-control" name="FieldDescription">

						<label style="margin-left: 20px" class="mr-sm-2">Type</label> <select
							class="form-control" name="FieldType">
							<option value="0">Banner</option>
							<option value="1">Gallery</option>
						</select> <label style="margin-left: 20px" class="mr-sm-2">Image</label> <input
							type="file" class="form-control" name="FieldPhoto">

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

		<!-- Cards-->
		<c:forEach items="${image}" var="item">
		
			<div class="card card--big" style="margin-left: 55px">
			
				<div class="card__image"
					style="background-image: url(${pageContext.request.contextPath}/resources/assets/img/${item.photo});"></div>
				<h2 class="card__title">${item.title}</h2>
<%-- 				<p class="card__text">${item.content }</p>
 --%>				
				<c:set var="description" value="${item.description }"/>  
				<h4 class="card__role" >
				<c:choose>
					<c:when test="${item.image_type == 0}"> Banner</c:when>
								<c:otherwise>Gallery</c:otherwise>
								</c:choose>
				
				</h4>
				<p class="card__text">${fn:substring(description, 0, 98)}  . . .</p>
				<div  class="card__action-bar">
					<a style="margin: 20%" class="popup" href="${pageContext.request.contextPath}/resources/assets/img/${item.photo}">VIEW</a>
					<button class="card__button" data-href="image-delete/${item.id }"
						data-toggle="modal" data-target="#confirm-delete">DELETE</button>
				</div>
			</div>

		</c:forEach>

	</div>
















</div>
<jsp:include page="../include/_footer.jsp"></jsp:include>

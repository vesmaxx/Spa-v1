<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Đặt Lịch</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">
</head>
<body>
	<div class="col-md-10 content">

		<div class="panel panel-default">
			<form:form action="${pageContext.request.contextPath}/admin/order"
				method="POST" modelAttribute="News">
				<form:hidden path="id" />
				<form:hidden path="user"  />
				
				<div class="form-group">
					<form:label path="">Thời gian</form:label>
					<form:input path="birthday" class="form-control" pattern="^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[1,3-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$" />
				</div>
				
				<div class="form-group">
					<form:label path="">Số lượng</form:label>
					<form:input path="email" class="form-control"/>
				</div>
				<div class="form-group">
					<form:label path="">Dịch vụ</form:label>
					<form:select path="services.id" items="${services}" itemValue="id"
						itemLabel="name" class="form-control">
					</form:select>
				</div>

				<form:button class="btn btn-default">save</form:button>

			</form:form>
		</div>
	</div>
</body>
</html>
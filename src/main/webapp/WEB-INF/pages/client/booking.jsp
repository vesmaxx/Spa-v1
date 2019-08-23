<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<jsp:include page="include/_head.jsp"></jsp:include>


<div class="container">

	<div class="row" style="padding: 30px">


		<section id="appoinment" class="section-padding">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="opening-hours">
							<h3>Opening Hours</h3>
							<p>A collection of textile samples lay spread out on the
								table Samsa was a travelling salesman.</p>
							<ul>
								<li>Monday : 8:00am - 21:00pm</li>
								<li>Monday : 8:00am - 21:00pm</li>
								<li>Monday : 8:00am - 21:00pm</li>
								<li>Monday : 8:00am - 21:00pm</li>
								<li>Sunday: Close</li>
							</ul>
						</div>
						<div class="appoinment-wrapper">
							<form action="booked" method="post">

								<c:forEach items="${User }" var="profile">
									<input name="users" value="${profile.id }"hidden="true" />
								</c:forEach>
								
								<select name="services">
									<c:forEach items="${service}" var="it">
										<option value="${it.id }">${it.name}</option>
									</c:forEach>

								</select>
								<div class="dtb">
									<input type="date" name="date" style="width: 50%"> 
									<select name="number" style="width: 46%">
										<option value="1">1 person</option>
										<option value="2">2 person</option>
										<option value="3">3 person</option>
										<option value="4">4 person</option>
									</select>
								</div>
								<div class="dtb">
									<select name="minute">
										<option value="08">08</option>
										<option value="09">09</option>
										<option value="10">10</option>
										<option value="11">11</option>
										<option value="12">12</option>
										<option value="13">13</option>
										<option value="14">14</option>
										<option value="15">15</option>
										<option value="16">16</option>
										<option value="17">17</option>
										<option value="18">18</option>
										<option value="19">19</option>
										<option value="20">20</option>
										<option value="21">21</option>
									</select> 
									<select name="seconds">
										<option value="00">00</option>
										<option value="10">10</option>
										<option value="20">20</option>
										<option value="30">30</option>
										<option value="40">40</option>
										<option value="50">50</option>
									</select>
									
									<select name="round" style="width: 152px">
										<option value="1">1 Ngày</option>
										<option value="2">2 Ngày</option>
										<option value="3">3 Ngày</option>
										<option value="4">4 Ngày</option>
										<option value="5">5 Ngày</option>
										
									</select>
								</div>
								
								
								<div class="dtb">
									<select name="location" style="width: 100%">
										<option value="1">Làm tại nhà</option>
										<option value="0">Làm tại quán</option>
										
									</select> 
									
								</div>


								<span class="input input--hantus">


									<button type="submit" class="boxed-btn">Submit Now</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
</div>
<jsp:include page="include/_footer.jsp"></jsp:include>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<jsp:include page="include/_head.jsp"></jsp:include>


<div class="container">
     
            <div class="row" style="padding:30px">
       
                
                <div style="margin: 0 auto" class="col-lg-8 contact-form">
                    <h2 style="text-align: center; margin-bottom: 20px">Profile Detail</h2>
                    <c:forEach items ="${User }" var="item"> 
                    <form action="profile-proccess" method="post">
                    
						<label class="title-profile">Email : </label>
                        <span class="input input--hantus">
                       
                            <input value="${item.email }" name="FieldEmail" class="input__field input__field--hantus" type="text" id="input-01" >
                            <label class="input__label input__label--hantus" for="input-01">
                                <svg class="graphic graphic--hantus" width="100%" height="100%" viewBox="0 0 404 77" preserveAspectRatio="none">
                                <path d="m0,0l404,0l0,77l-404,0l0,-77z"></path>
                                </svg>
                                
                            </label>
                        </span>
						
						 <label class="title-profile">Name : </label>
                        <span class="input input--hantus">
                            <input value="${item.name }" name="FieldName" class="input__field input__field--hantus" type="text"  id="input-02">
                            <label class="input__label input__label--hantus" for="input-02">
                                <svg class="graphic graphic--hantus" width="100%" height="100%" viewBox="0 0 404 77" preserveAspectRatio="none">
                                <path d="m0,0l404,0l0,77l-404,0l0,-77z"></path>
                                </svg>
                            </label>
                        </span>
                        
                        
                         <label class="title-profile">Phone : </label>
                        <span class="input input--hantus">
                            <input value="${item.photo }" name="FieldPhone" class="input__field input__field--hantus" type="text"  id="input-04">
                            <label class="input__label input__label--hantus" for="input-04">
                                <svg class="graphic graphic--hantus" width="100%" height="100%" viewBox="0 0 404 77" preserveAspectRatio="none">
                                <path d="m0,0l404,0l0,77l-404,0l0,-77z"></path>
                                </svg>
                            </label>
                        </span>
						
						 <label class="title-profile">Birthday: </label>
                        <span class="input input--hantus">
                            <input value="${item.birthday }" name="FieldBirthday" class="input__field input__field--hantus" type="date" id="input-03">
                            <label class="input__label input__label--hantus" for="input-03">
                                <svg class="graphic graphic--hantus" width="100%" height="100%" viewBox="0 0 404 77" preserveAspectRatio="none">
                                <path d="m0,0l404,0l0,77l-404,0l0,-77z"></path>
                                </svg>
                            </label>
                        </span>

                         <span class="input input--hantus">
                        	 <label class="radio-inline"  style="margin-right: 20px">Gender</label>
                            <label class="radio-inline" style="margin-right: 10px">
                            <input checked value="false" type="radio" name="FieldGender">Male</label>
                            <label class="radio-inline">
                            <input  type="radio" value="true" name="FieldGender">Female</label>
     
                        </span>
							
							<input value="${item.id }" type="hidden" name="FieldId" >
							<input value="${item.passwords }" type="hidden" name="FieldPWS" >
                        <button class="boxed-btn">Update</button>
                       
                    </form>
                     </c:forEach> 
                </div>
                
            </div>
        </div>
<jsp:include page="include/_footer.jsp"></jsp:include>
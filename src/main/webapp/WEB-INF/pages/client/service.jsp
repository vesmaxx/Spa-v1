<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<jsp:include page="include/_head.jsp"></jsp:include>


<div class="container">
     
         <section id="services" class="section-padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3 col-12 text-center">
                    <div class="section-title">
                        <h2>Our Services</h2>
                        <hr>
                        <p>These are the services we provide, these makes us stand apart.</p>
                    </div>
                </div>
            </div>
            <div class="row">
            
              <c:forEach items="${service }" var = "item">
            
            <div class="col-lg-3 col-md-6 col-sm-6 mb-5">                    
                    <div class="service-box text-center">                        
                        <figure>
                            <img style="border-radius: 50%" src="${pageContext.request.contextPath}/resources/assets/img/${item.images}" alt="">
                            <figcaption>
                                <div class="inner-text">
                                    <a href="#" class="boxed-btn">Book now</a>
                                </div>
                            </figcaption>
                        </figure>
                        <h4>${item.name }</h4>
                        <p>Lorem Ipsum is simply dummy text of  the printing and typesetting.</p>
                        <p class="price">${item.price }</p>
                    </div>
                </div>
         
               </c:forEach>
             
		
            
            
            
        </div>
        
    </section>
        </div>
<jsp:include page="include/_footer.jsp"></jsp:include>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<jsp:include page="include/_head.jsp"></jsp:include>


<section id="breadcrumb-area">
        <div class="container">
            <div class="row">
                <div class="col-12 text-center">
                    <h2>Gallery</h2>
                    <ul class="breadcrumb-nav list-inline">
                        <li><a href="index.html">Home</a></li>
                        <li>Gallery</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    
    
    
    
    <section id="gallery" class="section-padding gallery-page">
        <div class="container">
            <div class="row gallery-tab">
                <div class="col-md-12 text-center">
                    <ul class="gallery-tab-sorting sorting-btn" id="filter">
                        <li><a href="#" class="active" data-group="Show All" >All Portfolio</a></li>
                        <li><a href="#" data-group="beautyspa">Beauty Spa</a></li>
                        <!-- <li><a href="#"  data-group="haircut">Hair Cut</a></li>
                        <li><a href="#" data-group="nailcare">Nail Care</a></li>
                        <li><a href="#" data-group="skincare">Skin Care</a></li>  -->
                        <li><a href="#"  data-group="message">Massage</a></li>
                    </ul>
                </div>
            </div>
        </div>
        
        
        <div class="container-fluid">
            <div class="row gallery shuffle" id="grid" style="position: relative; overflow: hidden; height: 718.8px; transition: height 250ms ease-out 0s;">
                
            
                
                
                <c:forEach items="${image}" var="item">
                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 gallery-item shuffle-item filtered" data-groups="[&quot;message&quot;, &quot;haircut&quot;, &quot;nailcare&quot;, &quot;Show All&quot;]" style="position: absolute; top: 0px; left: 0px; visibility: visible; opacity: 1; transform: translate(959px, 399px) scale(1); transition: transform 250ms ease-out 0s, opacity 250ms ease-out 0s;">
                    <figure>
                        <img style="width: 384,78px; height:  244,86px" src="${pageContext.request.contextPath}/resources/assets/img/${item.photo}" />
                        <figcaption>
                            <div class="inner-text">
                                <ul>
                                    <li><a href="#"><i class="fas fa-link"></i></a></li>
                                    <li><a class="popup" href="${pageContext.request.contextPath}/resources/assets/img/${item.photo}"><i class="fas fa-eye"></i></a></li>
                                </ul>
                                <h4>AAAA</h4>
                                <p>26 Feb 2018</p>
                            </div>
                        </figcaption>
                    </figure>
                </div>   
                </c:forEach>
                
               
            </div>
        </div>

      
        
    </section>
    
    
    
    
<jsp:include page="include/_footer.jsp"></jsp:include>
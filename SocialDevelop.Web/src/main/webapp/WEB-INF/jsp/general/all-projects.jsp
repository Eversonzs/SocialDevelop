<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!-- preloader section -->
<div class="preloader">
	<div class="sk-spinner sk-spinner-circle">
       <div class="sk-circle1 sk-circle"></div>
       <div class="sk-circle2 sk-circle"></div>
       <div class="sk-circle3 sk-circle"></div>
       <div class="sk-circle4 sk-circle"></div>
       <div class="sk-circle5 sk-circle"></div>
       <div class="sk-circle6 sk-circle"></div>
       <div class="sk-circle7 sk-circle"></div>
       <div class="sk-circle8 sk-circle"></div>
       <div class="sk-circle9 sk-circle"></div>
       <div class="sk-circle10 sk-circle"></div>
       <div class="sk-circle11 sk-circle"></div>
       <div class="sk-circle12 sk-circle"></div>
    </div>
</div>

<!-- navigation section -->
<section class="navbar navbar-fixed-top custom-navbar" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="icon icon-bar"></span>
				<span class="icon icon-bar"></span>
				<span class="icon icon-bar"></span>
			</button>
			<a href="index.html" class="navbar-brand">SocDev</a>
		</div>
		
		<div class="collapse navbar-collapse">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="index.html" class="smoothScroll">HOME</a></li>
				<li><a href="index.html#work" class="smoothScroll">DEVELOPERS</a></li>
				<li><a href="index.html#portfolio" class="smoothScroll">PROJECTS</a></li>
				<li><a href="login.html" class="smoothScroll">SIGN IN / SIGN UP</a></li>
				<li><a href="about.html" class="smoothScroll">ABOUT</a></li>
				<li><a href="index.html#contact" class="smoothScroll">CONTACT</a></li>
			</ul>
		</div>
	</div>
</section>

<section id="team">
	<div class="col-md-12" style="margin-top: 90px;">
            <div class="input-group" id="adv-search">
                <input type="text" class="form-control" placeholder="Search for Projects" />
                <div class="input-group-btn">
                    <div class="btn-group" role="group">
                        <div class="dropdown dropdown-lg">
                            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><span class="caret"></span></button>
                            <div class="dropdown-menu dropdown-menu-right" role="menu">
                                <form class="form-horizontal" role="form">
                                  <div class="form-group">
                                    <label for="filter">Filter by category</label>
                                    <select class="form-control">
                                        <option value="0" selected>All</option>
                                        <option value="html">Html</option>
                                        <option value="css">Css</option>
                                        <option value="js">Javascript</option>
                                        <option value="java">Java</option>
                                        <option value="Csharp">C#</option>
                                    </select>
                                  </div>
                                  <div class="form-group">
                                    <div id="visibleskills2">
                                    <label for="filter">Filter by skills</label>
                                    <select class="form-control">
                                        <option value="all" selected>All</option>
                                        <option value="html">Html</option>
                                        <option value="css">Css</option>
                                        <option value="js">Javascript</option>
                                        <option value="java">Java</option>
                                        <option value="Csharp">C#</option>
                                    </select>
                                  </div>
                                  </div>
                                  <input id="btnvisible2" class="btn btn-default" type="button" value="Add level" style="margin-bottom: 10px; border-radius: 4px;transition: all 0.4s ease-in-out;" />
                                  <div id="hidedskills2">
                                    <div class="form-group">
                                      <label for="filter">Filter by level</label>
                                      <select class="form-control">
                                          <option value="all" selected>All</option>
                                          <option value="one">1</option>
                                          <option value="two">2</option>
                                          <option value="three">3</option>
                                          <option value="four">4</option>
                                          <option value="five">5</option>
                                          <option value="six">6</option>
                                          <option value="seven">7</option>
                                          <option value="eight">8</option>
                                          <option value="nine">9</option>
                                          <option value="ten">10</option>
                                      </select>
                                    </div>
                                  </div>
                                  <input id="btnhide2" class="btn btn-default" type="button" value="Delete Level" style="border-radius: 4px;transition: all 0.4s ease-in-out;" />
                                  <div class="form-group">
                                    <label for="filter">Filter by date</label>
                                    <select class="form-control">
                                        <option value="0" selected>All</option>
                                        <option value="new">New</option>
                                        <option value="old">Old</option>
                                    </select>
                                  </div>
                                  <button type="submit" class="btn btn-primary"><img src="../resources/images/account-search.png"></button>
                                </form>
                            </div>
                        </div>
                        <button type="button" class="btn btn-primary"><img src="../resources/images/account-search.png"></button>
</section>
<!-- pricing section -->
<!-- portfolio section -->
<div id="portfolio">
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-sm-12">
				<div class="section-title">
                      			<strong>Projects</strong>
					<hr style="margin-bottom: 30px;">
                                        <a href="gotoaddproject"> <button type="button"  class="btn btn-primary">Add New Project</button></a>
				</div>
       
				<!-- ISO section -->
				<div class="iso-section">
               		<div class="iso-box-section wow fadeIn" data-wow-delay="0.9s">
                            <div class="iso-box-wrapper col4-iso-box">
                                <c:forEach items="${projectlist}" var="item">
                                    <div class="iso-box html photoshop hover_text col-lg-4 col-md-4 col-sm-6">
               				<a href="../resources/images/portfolio-img5.jpg" data-lightbox-gallery="portfolio-gallery"><img src="../resources/images/portfolio-img5.jpg" alt="portfolio img"></a>
                                            <div class="project_description">
               				 	<div class="des">
                                                    <h1><c:out value="${item.getName()}" /></h1>
               				 	 <a href=projectpage?name=<c:out value="${item.getName()}" />>Read More</a>
                                                </div>
                                            </div>
                                    </div>
                                </c:forEach>
                            </div>
               		</div>

				</div>
			</div>
		</div>
	</div>
	<!-- Page Counter -->
				<div class="pagination">
				    <a href="#">&laquo;</a>
				    <a href="#"  class="active">1</a>
				    <a href="#">2</a>
				    <a href="#">3</a>
				    <a href="#">4</a>
				    <a href="#">5</a>
				    <a href="#">6</a>
				    <a href="#">&raquo;</a>
  				</div>
</div>		

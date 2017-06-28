<%-- 
    Document   : index
    Created on : May 28, 2017, 6:58:02 PM
    Author     : evers
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<section id="about">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-sm-12 text-center">
                <div class="section-title">
                    <strong>ABOUT</strong>
                    <h1 class="heading bold">OUR AGENCY</h1>
                    <hr>
                </div>
            </div>
            <div class="col-md-6 col-sm-12">
                <img src="../resources/images/about-img.jpg" class="img-responsive" alt="about img">
            </div>
            <div class="col-md-6 col-sm-12">
                <h3 class="bold">Social Development</h3>
                <h1 class="heading bold">Best way to find DEVELOPER or PROJECT</h1>
                <h2>Welcome ${SESSION.name} ${SESSION.surname} </h2>
                <!-- Nav tabs -->
                <ul class="nav nav-tabs" role="tablist">
                    <li class="active"><a href="#design" aria-controls="design" role="tab" data-toggle="tab">DESIGN</a></li>
                    <li><a href="#mobile" aria-controls="mobile" role="tab" data-toggle="tab">MOBILE</a></li>
                    <li><a href="#social" aria-controls="social" role="tab" data-toggle="tab">SOCIAL</a></li>
                </ul>
                <!-- tab panes -->
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane active" id="design">
                        <p>Duis aute irure dolor in <a href="#">reprehenderit</a> in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Sed id est tincidunt, iaculis nulla vel, sodales metus. Morbi interdum accumsan augue, in accumsan neque lacinia sed. Fusce cursus eu ligula ut gravida.</p>
                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet. Dolore magna aliquam erat volutpat.</p>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="mobile">
                        <p>Aenean commodo ligula eget dolor. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</p>
                        <p><a href="#">Duis aute irure dolor</a> in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet.</p>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="social">
                        <p>Pellentesque elementum, lacus sit amet <a href="#">hendrerit</a> posuere, quam quam tristique nisi, nec ornare ligula magna id nisl. Donec blandit enim ac semper facilisis. Curabitur eu laoreet mauris, eget fermentum velit.</p>
                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet. Dolore magna aliquam erat volutpat.</p>
                    </div>

                    <br><br><br>
                    <a href="${contextPath}/app/logout"> logout </a>

                </div>
            </div>
        </div>
    </div>
</section>

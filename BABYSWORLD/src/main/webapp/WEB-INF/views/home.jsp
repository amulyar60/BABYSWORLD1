<%@include file="/WEB-INF/views/template/header.jsp" %>

<br>
<br>
<br>
<br>
<style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
  </style>
<!-- Carousel
================================================== -->
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img class="first-slide home-image" width="900" height="600"
             src="<c:url value="/resources/images/carousel image1.jpg" />"
             alt="First slide">

            <div class="container">
                <div class="carousel-caption">
                    <h1>WELCOME TO BABYSWORLD</h1>

                    

                </div>
            </div>
        </div>
        <div class="item">
            <img class="second-slide home-image" width="900" height="600"
                 src="<c:url value="/resources/images/carousel image2.jpg" />"
                 alt="Second slide">

            <div class="container">
                <div class="carousel-caption">
                   
                </div>
            </div>
        </div>
        <div class="item">
            <img class="third-slide home-image" width="900" height="600"                
             src="<c:url value="/resources/images/carousel image3.jpg" />"
                 alt="third slide">

            <div class="container">
                <div class="carousel-caption">
                   
                </div>
            </div>
        </div>
        <div class="item">
            <img class="fourth-slide home-image" width="900" height="600"
                 src="<c:url value="/resources/images/carousel image4.jpg" />"
                 alt="fourth slide">

            <div class="container">
                <div class="carousel-caption">
                   
                </div>
            </div>
        </div>
    </div>
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>

<!-- Thumbnail images -->
<div class="container marketing">

    <!-- Three columns of text below the carousel -->
    <div class="row">
        <div class="col-lg-4">
            <a class="btn btn-default" href="<c:url value="/product/productList?searchCondition=$" />"
               role="button">
                <img class="img-circle" src="<c:url value="/resources/images/thumbnail image1.jpg" />" alt=" " width="140" height="140"></a>

            
        </div>
    <div class="row">
        <div class="col-lg-4">
            <a class="btn btn-default" href="<c:url value="/product/productList?searchCondition=$" />"
               role="button">
                <img class="img-circle" src="<c:url value="/resources/images/thumbnail image2.jpg" />" alt=" " width="140" height="140"></a>

            
        </div>
        

    <div class="row">
        <div class="col-lg-4">
            <a class="btn btn-default" href="<c:url value="/product/productList?searchCondition=$" />"
               role="button">
                <img class="img-circle" src="<c:url value="/resources/images/thumbnail image3.jpg" />" alt=" " width="140" height="140"></a>

           
        </div>
        </div>
        </div>
        </div>

    </div><!-- /.row -->

    <%@include file="/WEB-INF/views/template/footer.jsp" %>


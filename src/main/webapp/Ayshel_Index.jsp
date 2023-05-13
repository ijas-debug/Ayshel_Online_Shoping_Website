<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ayshel Boutique</title>
    <link rel="icon" href="data:image/jpeg;base64,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" type="image/gif" sizes="16x16">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="css/ayshel_index.css">
    <!-- Import Font Awesome CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" />
    
    <!-- Import Font Awesome JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/js/all.min.js"></script>
    
</head>
<body>

  <div class="fullbackground">
    <div class="heading1">
      <nav class="navbar navbar-expand-lg navbar-light bg-light">
          
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
        
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
              <li class="nav-item active">
                <a class="nav-link" href="Ayshel_Index.jsp">HOME <span class="sr-only">(current)</span></a>
              </li>
              
               <li class="navbar-nav mr-auto">
                  <a class="nav-link" href="clothing.html">CLOTHING<span class="sr-only">(current)</span></a>
              </li>         
               <li class="navbar-nav mr-auto">
                  <a class="nav-link" href="">SERVICES<span class="sr-only">(current)</span></a>
              </li>  
              <li class="navbar-nav mr-auto">
                <a class="nav-link" href="about.html">ABOUT<span class="sr-only">(current)</span></a>
            </li>          
            </ul>
            <form class="form-inline my-2 my-lg-0">
               <li class="navbar-nav mr-auto">
                  <a class="nav-link" href="login.jsp">LOGIN<span class="sr-only">(current)</span></a>
              </li>    
               <li class="navbar-nav mr-auto">
                  <a class="nav-link" href="signup.jsp">SIGNUP<span class="sr-only">(current)</span></a>
              </li>     
              
            </form>
          </div>
        </nav>
    
      <header class="bg-dark ">
        <div class="row text-white"> 
            <div class=" mx-auto ayshel1">
                <h2>AYSHEL BOUTIQUE</h2>
            </div>

        

        </div>
    </header>
    <header class="bg-secondary">
        <div class="row text-dark">
            <div class="mx-auto">
                <h6 class="ayshel">FREE SHIPING on all orders </h6>
            
            </div>

        </div>

        </div>
    </header>
    <div class="row">
        <h6 class="top mx-auto">TOPS</h6>
    </div>

    <div class="checkayshel">
        <div class="promo-grid__container promo-grid__container--tint ">
            <div class="type-banner__content text-center checkayshel"><div class="type-banner__text"><p class="h3">CHECK OUT THIS WEEK'S NEWEST ARRIVALS</p><p class="btn btn--secondary btn--small btn--tint-border">shop now</p></div>
            </div>
          </div>
    </div>


    <div class="videobar">

      <!-- Carousel wrapper -->
<div
id="carouselVideoExample"
class="carousel slide carousel-fade"
data-mdb-ride="carousel"
>
<!-- Indicators -->
<div class="carousel-indicators">
  <button
    type="button"
    data-mdb-target="#carouselVideoExample"
    data-mdb-slide-to="0"
    class="active"
    aria-current="true"
    aria-label="Slide 1"
  ></button>
  <button
    type="button"
    data-mdb-target="#carouselVideoExample"
    data-mdb-slide-to="1"
    aria-label="Slide 2"
  ></button>
  <button
    type="button"
    data-mdb-target="#carouselVideoExample"
    data-mdb-slide-to="2"
    aria-label="Slide 3"
  ></button>
</div>

<!-- Inner -->
<div class="carousel-inner">
  <!-- Single item -->
  <div class="carousel-item active">
    <video class="img-fluid" autoplay loop muted>
      <source src="https://lv-vod.fl.freecaster.net/vod/louisvuitton/l3oYZmbW3N_HD.mp4" type="video/mp4" />
    </video>
    <div class="carousel-caption d-none d-md-block">
      <h3 class="campaign mx-auto">WOMEN'S FALL-WINTER 2022</h3>
      <p>
        
      </p>
    </div>
  </div>

  <!-- Single item -->
  <div class="carousel-item">
    <video class="img-fluid" autoplay loop muted>
      <source src="https://eu.louisvuitton.com/eng-e1/stories/capucines-olympia-of-greece" type="video/mp4" />
    </video>
    <div class="carousel-caption d-none d-md-block">
      <h5>Second slide label</h5>
      <p>
        Lorem ipsum dolor sit amet, consectetur adipiscing elit.
      </p>
    </div>
  </div>

  <!-- Single item -->
  <div class="carousel-item">
    <video class="img-fluid" autoplay loop muted>
      <source
        src="https://mdbcdn.b-cdn.net/img/video/Agua-natural.mp4"
        type="video/mp4"
      />
    </video>
    <div class="carousel-caption d-none d-md-block">
      <h5>Third slide label</h5>
      <p>
        Praesent commodo cursus magna, vel scelerisque nisl consectetur.
      </p>
    </div>
  </div>
</div>
<!-- Inner -->

<!-- Controls -->

</div>
<!-- Carousel wrapper -->
    </div>


   




    
    <div CLASS="bar1">

        <div class="btn-group sale bg-light">
            <button class="btn btn-secondary btn-lg dropdown-toggle btn-light" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              SIZE
            </button>
            <div class="dropdown-menu">
                <a class="dropdown-item" href="#">XS(65)</a>
                <a class="dropdown-item" href="#">XL(2)</a>
                <a class="dropdown-item" href="#">XS(5)</a>
                <a class="dropdown-item" href="#">S/M(2)</a>
                <a class="dropdown-item" href="#">M/L(6)</a>
                <a class="dropdown-item" href="#">L/XL(1)</a>
                <a class="dropdown-item" href="#">SMALL(93))</a>
                <a class="dropdown-item" href="#">MEDIUM(92))</a>
                <a class="dropdown-item" href="#">LARGE(86)</a>
            </div>
                <br>
                <div>
            <button class="btn btn-secondary btn-lg dropdown-toggle btn-light" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                PRICE
              </button>
              <div class="dropdown-menu">
                  <a class="dropdown-item" href="#">$120-ABOVE</a>
                  <a class="dropdown-item" href="#">$100-120</a>
                  <a class="dropdown-item" href="#">$50-100</a>
                  <a class="dropdown-item" href="#">BELOW-$50</a>
              
              </div>
              </div>
          </div>
         


       
        <div class="imagebox">

          <div class="container my-4">

            <p class="font-weight-bold  blousetext">BLOUSES. KNITS. TEES. BODYSUITS. ALL THE GOODS.</p>
        
           
        
            <hr class="my-4">
        
            <!--Carousel Wrapper-->
            <div id="multi-item-example" class="carousel slide carousel-multi-item" data-ride="carousel">
        
              <!--Controls-->
              <div class="controls-top">
                <a class="btn-floating" href="#multi-item-example" data-slide="prev"><i class="fa fa-chevron-left"></i></a>
                <a class="btn-floating" href="#multi-item-example" data-slide="next"><i class="fa fa-chevron-right"></i></a>
              </div>
              <!--/.Controls-->
        
              <!--Indicators-->
              <ol class="carousel-indicators">
                <li data-target="#multi-item-example" data-slide-to="0" class="active"></li>
                <li data-target="#multi-item-example" data-slide-to="1"></li>
                <li data-target="#multi-item-example" data-slide-to="2"></li>
              </ol>
              <!--/.Indicators-->
        
              <!--Slides-->
              <div class="carousel-inner" role="listbox">
        
                <!--First slide-->
                <div class="carousel-item active">
        
                  <div class="row">
                    <div class="col-md-4">
                      <div class="card mb-2">
                        <img class="card-img-top" src="https://cdn.shopify.com/s/files/1/1965/6811/products/OB1500116_1102_a_360x.jpg?v=1652801635"
                          alt="Card image cap">
                        <div class="card-body">
                          <h4 class="card-title">QUINN COVERALL</h4>
                          <p class="card-text">THISTLE SEED</p>
                          <a class="btn btn-primary">$128</a>
                        </div>
                      </div>
                    </div>
        
                    <div class="col-md-4 clearfix d-none d-md-block">
                      <div class="card mb-2">
                        <img class="card-img-top" src="https://cdn.shopify.com/s/files/1/1965/6811/products/Joah-Brown-Vintage-Long-Sleeve-Off-White-Cotton-Front1_600x_4076d928-a2d6-47fc-b0c7-cca686e31080_360x.webp?v=1657657713"
                          alt="Card image cap">
                        <div class="card-body">
                          <h4 class="card-title">VINTAGE LONG SLEEVE / FOG</h4>
                          <p class="card-text"></p>
                          <a class="btn btn-primary">$124</a>
                        </div>
                      </div>
                    </div>
        
                    <div class="col-md-4 clearfix d-none d-md-block">
                      <div class="card mb-2">
                        <img class="card-img-top" src="https://cdn.shopify.com/s/files/1/1965/6811/products/15136395_e9d792ab-c85b-4344-8f5c-30a426ca4402_360x.jpg?v=1657649097"
                          alt="Card image cap">
                        <div class="card-body">
                          <h4 class="card-title">FLOWER POWER SWEATER</h4>
                          <p class="card-text">THISTLE SEED</p> 
                          <a class="btn btn-primary">$98</a>
                        </div>
                      </div>
                    </div>
                  </div>
        
                </div>
                <!--/.First slide-->
        
                <!--Second slide-->
                <div class="carousel-item">

                 
        
                  <div class="row">
                    <div class="col-md-4">
                      <div class="card mb-2">
                        <img class="card-img-top" src="https://cdn.shopify.com/s/files/1/1965/6811/products/16985431_e2dd6d20-1361-4695-94aa-7f06c44e6c8d_360x.jpg?v=1657648504"
                          alt="Card image cap">
                        <div class="card-body">
                          <h4 class="card-title">SOUTHERN CHARM TUNIC</h4>
                          <p class="card-text"></p>
                          <a class="btn btn-primary">$64</a>
                        </div>
                      </div>
                    </div>
        
                    <div class="col-md-4 clearfix d-none d-md-block">
                      <div class="card mb-2">
                        <img class="card-img-top" src="https://cdn.shopify.com/s/files/1/1965/6811/products/abjkt00349_billabong_w_wmu_bck1_360x.jpg?v=1657738880"
                          alt="Card image cap">
                        <div class="card-body">
                          <h4 class="card-title">COASTAL SANDS KNIT</h4>
                          <p class="card-text">TOP / WHITE</p>
                          <a class="btn btn-primary">$45.98</a>
                        </div>
                      </div>
                    </div>
        
                    <div class="col-md-4 clearfix d-none d-md-block">
                      <div class="card mb-2">
                        <img class="card-img-top" src="https://cdn.shopify.com/s/files/1/1965/6811/products/project-social-t-cassie-ruched-tank-honey-miel-2102_1296x_4a09d273-25f4-4cf8-b606-eddad6b78a7b_360x.webp?v=1656005947"
                          alt="Card image cap">
                        <div class="card-body">
                          <h4 class="card-title">CASSIE RUCHED TANK</h4>
                          <p class="card-text">HONEY MEIL</p>
                          <a class="btn btn-primary">$58</a>
                        </div>
                      </div>
                    </div>
                  </div>
        
                </div>
                <!--/.Second slide-->
        
                <!--Third slide-->
                <div class="carousel-item">
        
                  <div class="row">
                    <div class="col-md-4">
                      <div class="card mb-2">
                        <img class="card-img-top" src="https://cdn.shopify.com/s/files/1/1965/6811/products/T1536PRI618-LLBLM-OS_PRINCETHECROSSOSTEE_ECOMMCROPPED_3_1500x_06d8ce15-10e7-4c37-82b7-16edb4cdf9c3_360x.webp?v=1654104681"
                          alt="Card image cap">
                        <div class="card-body">
                          <h4 class="card-title">PRINCE THE CROSS ONE</h4>
                          <p class="card-text">SIZE TEE</p>
                          <a class="btn btn-primary">$78</a>
                        </div>
                      </div>
                    </div>
        
                    <div class="col-md-4 clearfix d-none d-md-block">
                      <div class="card mb-2">
                        <img class="card-img-top" src="https://cdn.shopify.com/s/files/1/1965/6811/products/elysian6.28-01_360x.jpg?v=1657815456"
                          alt="Card image cap">
                        <div class="card-body">
                          <h4 class="card-title">COW BOYS AND COUNTRY</h4>
                          <p class="card-text">MUSIC TEE</p>
                          <a class="btn btn-primary">$80</a>
                        </div>
                      </div>
                    </div>
        
                    <div class="col-md-4 clearfix d-none d-md-block">
                      <div class="card mb-2">
                        <img class="card-img-top" src="https://cdn.shopify.com/s/files/1/1965/6811/products/16869528_838f7135-e984-473b-ab96-50be165b8ff0_360x.jpg?v=1659366293"
                          alt="Card image cap">
                        <div class="card-body">
                          <h4 class="card-title">ELLIE LETUCE TOP</h4>
                          <p class="card-text"></p>
                          <a class="btn btn-primary">$35.95</a>
                        </div>
                      </div>
                    </div>
                  </div>
        
                </div>
                <!--/.Third slide-->
        
              </div>
              <!--/.Slides-->
        
            </div>
            <!--/.Carousel Wrapper-->
        
        
          </div>
            

        </div>
              
        </div>


       




    

    <div class="blackwidow">
      <div class="bd-example">
        <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
          <ol class="carousel-indicators">
            <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
            <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
          </ol>
          <div class="carousel-inner">
            <div class="carousel-item active">
              <img src="https://eu.louisvuitton.com/content/dam/lv/online/high-end/unisex/collection/lady-b/U_LP_Lady_B_Drop_1_v2.html/jcr:content/assets/campaign-anok.jpg?imwidth=2048" class="d-block w-100" alt="...">
              <div class="carousel-caption d-none d-md-block">
                <h5>Psychedelic Flowers</h5>
                <p></p>
              </div>
            </div>
            <div class="carousel-item">
              <img src="https://eu.louisvuitton.com/content/dam/lv/online/high-end/unisex/collection/lady-b/U_Fa_Lady_B_PLP_Dispatch_BC.html/jcr:content/assets/BC_YK_Flower_Women_dispatch_filter.jpg?imwidth=2048" class="d-block w-100" alt="...">
              <div class="carousel-caption d-none d-md-block">
                <h5>OLYBIA OF GREECE</h5>
                <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
              </div>
            </div>
            <div class="carousel-item">
              <img src="https://eu.louisvuitton.com/content/dam/lv/online/high-end/unisex/collection/lady-b/U_Fa_Lady_B_PLP_Dispatch_BC.html/jcr:content/assets/BC_YK_Meta_Ball_Lady_dispatch_filter.jpg?imwidth=2048" class="d-block w-100" alt="...">
              <div class="carousel-caption d-none d-md-block">
                <h5>Metal Dots</h5>
                <p></p>
              </div>
            </div>
          </div>
          <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
      </div>
    </div>


    <div>

      <!-- Carousel wrapper -->
<div
id="carouselVideoExample"
class="carousel slide carousel-fade"
data-mdb-ride="carousel"
>
<!-- Indicators -->
<div class="carousel-indicators">
  <button
    type="button"
    data-mdb-target="#carouselVideoExample"
    data-mdb-slide-to="0"
    class="active"
    aria-current="true"
    aria-label="Slide 1"
  ></button>
  <button
    type="button"
    data-mdb-target="#carouselVideoExample"
    data-mdb-slide-to="1"
    aria-label="Slide 2"
  ></button>
  <button
    type="button"
    data-mdb-target="#carouselVideoExample"
    data-mdb-slide-to="2"
    aria-label="Slide 3"
  ></button>
</div>

<!-- Inner -->
<div class="carousel-inner">
  <!-- Single item -->
  <div class="carousel-item active">
    <video class="img-fluid" autoplay loop muted>
      <source src="https://lv-vod.fl.freecaster.net/vod/louisvuitton/6kDjKAPWSG_HD.mp4" type="video/mp4" />
    </video>
    <div class="carousel-caption d-none d-md-block">
      <h3 class="campaign mx-auto">TAMBOUR HORIZON LIGHT</h3>
      <p>
        
      </p>
    </div>
  </div>

  <!-- Single item -->
  <div class="carousel-item">
    <video class="img-fluid" autoplay loop muted>
      <source src="https://eu.louisvuitton.com/eng-e1/stories/capucines-olympia-of-greece" type="video/mp4" />
    </video>
    <div class="carousel-caption d-none d-md-block">
      <h5>Second slide label</h5>
      <p>
        Lorem ipsum dolor sit amet, consectetur adipiscing elit.
      </p>
    </div>
  </div>

  <!-- Single item -->
  <div class="carousel-item">
    <video class="img-fluid" autoplay loop muted>
      <source
        src="https://lv-vod.fl.freecaster.net/vod/louisvuitton/6kDjKAPWSG_HD.mp4"
        type="video/mp4"
      />
    </video>
    <div class="carousel-caption d-none d-md-block">
      <h5>Third slide label</h5>
      <p>
        Praesent commodo cursus magna, vel scelerisque nisl consectetur.
      </p>
    </div>
  </div>
</div>
<!-- Inner -->

<!-- Controls -->

</div>
<!-- Carousel wrapper -->
    </div>

    



    <div class="shoes">
    <div class=" mx-auto my-auto" style="width: 30rem;">
      <img class="card-img-top" src="https://media.gucci.com/content/DarkGray_ProductPush_Standard_1400x1400/1659537023/ProductPush_699424C9D001000_001_Light.jpg" alt="Card image cap">
      <div class="card-body">
      <p class="shoespara mx-auto">WOMEN'S PLATFORM</p>
      </div>
    </div>
    </div>

    <div>
      <div>
        <div class="card-body">
          <blockquote class="blockquote mb-0">
            <p class="quote">"We don't design clothes. We design dreams."</p>
            <footer class="blockquote-footer ralph">Ralph lauren<cite title="Source Title"></cite></footer>
          </blockquote>
        </div>
      </div>
    </div>



    <!--footer-->
    <div class="videobar">

      <!-- Footer -->
<footer class=" text-center text-dark">
  <!-- Grid container -->
  <div class="container p-4 footerayshel">
    <!-- Section: Social media -->
    <section class="mb-4">
      <!-- Facebook -->
      <a class="btn btn-outline-dark btn-floating m-1" href="#!" role="button"
        ><i class="fab fa-facebook"></i
      ></a>


      <!-- Google -->
      <a class="btn btn-outline-dark btn-floating m-1" href="https://www.justdial.com/Malappuram/Ayshel-Boutique-Near-Musjid-Mangalam-Mlp/9999PX483-X483-190322202629-T6N6_BZDET" role="button"
        ><i class="fab fa-google"></i
      ></a>

      <!-- Instagram -->
      <a class="btn btn-outline-dark btn-floating m-1" href="https://www.instagram.com/ayshellshop/?hl=en" role="button"
        ><i class="fab fa-instagram"></i
      ></a>

      <!-- Linkedin -->
      <a class="btn btn-outline-dark btn-floating m-1" href="#!" role="button"
        ><i class="fab fa-linkedin-in"></i
      ></a>

      
    <!-- Section: Social media -->

    <!-- Section: Form -->
    <section class="">
      <form action="">
        <!--Grid row-->
        <div class="row d-flex justify-content-center">
          <!--Grid column-->
          <div class="col-auto">
            <p class="pt-2">
              <strong>sign up</strong>
            </p>
          </div>
          <!--Grid column-->

          <!--Grid column-->
          <div class="col-md-5 col-12">
            <!-- Email input -->
            <div class="form-outline form-white mb-4">
              <input type="email" id="form5Example21" class="form-control" />
              <label class="form-label" for="form5Example21">Email address</label>
            </div>
          </div>
          <!--Grid column-->

          <!--Grid column-->
          <div class="col-auto">
            <!-- Submit button -->
            <button type="submit" class="btn btn-outline-dark mb-4 ">
              Subscribe
            </button>
          </div>
          <!--Grid column-->
        </div>
        <!--Grid row-->
      </form>
    </section>
    <!-- Section: Form -->

    <!-- Section: Text -->
    <section class="mb-4">
      <p>
        Subscribe to get special offers, free giveaways, and once-in-a-lifetime deals.
      </p>
    </section>
    <!-- Section: Text -->

    <!-- Section: Links -->
    <section class="">
      <!--Grid row-->
      <div class="row">
        <!--Grid column-->
        <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
          <h5 class="text-uppercase"></h5>

          <ul class="list-unstyled mb-0">
            <li>
              <a href="#!" class="text-white"></a>
            </li>
            <li>
              <a href="#!" class="text-white"></a>
            </li>
            <li>
              <a href="#!" class="text-white"></a>
            </li>
            <li>
              <a href="#!" class="text-white"></a>
            </li>
          </ul>
        </div>
        <!--Grid column-->

        <!--Grid column-->
        <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
          <h5 class="text-uppercase"></h5>

          <ul class="list-unstyled mb-0">
            <li>
              <a href="#!" class="text-white"></a>
            </li>
            <li>
              <a href="#!" class="text-white"></a>
            </li>
            <li>
              <a href="#!" class="text-white"></a>
            </li>
            <li>
              <a href="#!" class="text-white"></a>
            </li>
          </ul>
        </div>
        <!--Grid column-->

        <!--Grid column-->
        <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
          <h5 class="text-uppercase"></h5>

          <ul class="list-unstyled mb-0">
            <li>
              <a href="#!" class="text-white"></a>
            </li>
            <li>
              <a href="#!" class="text-white"></a>
            </li>
            <li>
              <a href="#!" class="text-white"></a>
            </li>
            <li>
              <a href="#!" class="text-white"></a>
            </li>
          </ul>
        </div>
        <!--Grid column-->

        <!--Grid column-->
        <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
          <h5 class="text-uppercase"></h5>

          <ul class="list-unstyled mb-0">
            <li>
              <a href="#!" class="text-white"></a>
            </li>
            <li>
              <a href="#!" class="text-white"></a>
            </li>
            <li>
              <a href="#!" class="text-white"></a>
            </li>
            <li>
              <a href="#!" class="text-white"></a>
            </li>
          </ul>
        </div>
        <!--Grid column-->
      </div>
      <!--Grid row-->
    </section>
    <!-- Section: Links -->
  </div>
  <!-- Grid container -->

  <!-- Copyright -->

  </footer>



 

    
  
  <div class="footerayshel">
  <div class="text-center p-3 " style="background-color: rgba(0, 0, 0, 0.2);">
    © 2020 Copyright:
    <a class="text-dark" href="https://mdbootstrap.com/">Ayshel.com</a>
  </div>
  </div>

</div>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>  
</body>
</html>
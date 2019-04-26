<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>I-news</title>

    <!-- Favicon and touch icons -->
    <link rel="shortcut icon" href="${contextPath}/static/assets/images/ico/favicon.png" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="${contextPath}/static/assets/images/ico/apple-touch-icon-57-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="${contextPath}/static/assets/images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="${contextPath}/static/assets/images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="${contextPath}/static/assets/images/ico/apple-touch-icon-144-precomposed.png">

    <!-- jquery ui css -->
    <link href="${contextPath}/static/assets/css/jquery-ui.min.css" rel="stylesheet" type="text/css"/>
    <!-- Bootstrap -->
    <link href="${contextPath}/static/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <!--Animate css-->
    <link href="${contextPath}/static/assets/css/animate.min.css" rel="stylesheet" type="text/css"/>
    <!-- Navigation css-->
    <link href="${contextPath}/static/assets/bootsnav/css/bootsnav.css" rel="stylesheet" type="text/css"/>
    <!-- youtube css -->
    <link href="${contextPath}/static/assets/css/RYPP.css" rel="stylesheet" type="text/css"/>
    <!-- font awesome -->
    <link href="${contextPath}/static/assets/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <!-- themify-icons -->
    <link href="${contextPath}/static/assets/themify-icons/themify-icons.css" rel="stylesheet" type="text/css"/>
    <!-- weather-icons -->
    <link href="${contextPath}/static/assets/weather-icons/css/weather-icons.min.css" rel="stylesheet" type="text/css"/>
    <!-- flat icon -->
    <link href="${contextPath}/static/assets/css/flaticon.css" rel="stylesheet" type="text/css"/>
    <!-- Important Owl stylesheet -->
    <link href="${contextPath}/static/assets/owl-carousel/owl.carousel.css" rel="stylesheet" type="text/css"/>
    <!-- Default Theme -->
    <link href="${contextPath}/static/assets/owl-carousel/owl.theme.css" rel="stylesheet" type="text/css"/>
    <!-- owl transitions -->
    <link href="${contextPath}/static/assets/owl-carousel/owl.transitions.css" rel="stylesheet" type="text/css"/>
    <!-- style css -->
    <link href="${contextPath}/static/assets/css/style.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<!-- PAGE LOADER -->
<div class="se-pre-con"></div>
<!-- *** START PAGE HEADER SECTION *** -->
<#include "/fragments/header.ftl">
<!-- *** END OF /. PAGE HEADER SECTION *** -->
<!-- *** START PAGE MAIN CONTENT *** -->
<main class="page_main_wrapper">
    <!-- START PAGE HEADER -->
    <section class="inner-head" style=" background-image: url(static/assets/images/about-bg.jpg);">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <h2 class="entry-title">About Us</h2>
                    <p class="description">
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer lorem quam, adipiscing condimentum tristique vel, eleifend sed turpis. Pellentesque cursus arcu id magna euismod in elementum purus molestie.
                    </p>
                    <div class="breadcrumb">
                        <ul class="clearfix">
                            <li class="ib"><a href="${contextPath}/index">Home</a></li>
                            <li class="ib current-page">About</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- END OF /. PAGE HEADER -->
    <div class="team about-content">
        <div class="container">
            <div class="about-title">
                <h1>Our Mission</h1>
                <h3>It is a long established fact that a reader will be distracted</h3>

                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
                    when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap
                    into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum
                    passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
                    when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five .</p>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <h2>Our Valuable Team Members </h2>
                </div>
                <!-- end col-12 -->
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <figure class="member"> <img src="${contextPath}/static/assets/images/team/1.png" class="img-responsive" alt="Image">
                        <figcaption>
                            <h4>Debora Hilton</h4>
                            <small>Editor</small>
                            <ul>
                                <li><a href="${contextPath}#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                <li><a href="${contextPath}#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                <li><a href="${contextPath}#"><i class="fa fa-youtube-play" aria-hidden="true"></i></a></li>
                                <li><a href="${contextPath}#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                            </ul>
                        </figcaption>
                    </figure>
                    <!-- end member -->
                </div>
                <!-- end col-3 -->
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <figure class="member"> <img src="${contextPath}/static/assets/images/team/2.png" class="img-responsive" alt="Image">
                        <figcaption>
                            <h4>Debora Hilton</h4>
                            <small>Editor</small>
                            <ul>
                                <li><a href="${contextPath}#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                <li><a href="${contextPath}#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                <li><a href="${contextPath}#"><i class="fa fa-youtube-play" aria-hidden="true"></i></a></li>
                                <li><a href="${contextPath}#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                            </ul>
                        </figcaption>
                    </figure>
                    <!-- end member -->
                </div>
                <!-- end col-3 -->
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <figure class="member"> <img src="${contextPath}/static/assets/images/team/3.png" class="img-responsive" alt="Image">
                        <figcaption>
                            <h4>Chris O'Daniel</h4>
                            <small>Publisher</small>
                            <ul>
                                <li><a href="${contextPath}#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                <li><a href="${contextPath}#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                <li><a href="${contextPath}#"><i class="fa fa-youtube-play" aria-hidden="true"></i></a></li>
                                <li><a href="${contextPath}#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                            </ul>
                        </figcaption>
                    </figure>
                    <!-- end member -->
                </div>
                <!-- end col-3 -->
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <figure class="member"> <img src="${contextPath}/static/assets/images/team/4.png" class="img-responsive" alt="Image">
                        <figcaption>
                            <h4>Lian Holden</h4>
                            <small>Project Manager</small>
                            <ul>
                                <li><a href="${contextPath}#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                <li><a href="${contextPath}#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                <li><a href="${contextPath}#"><i class="fa fa-youtube-play" aria-hidden="true"></i></a></li>
                                <li><a href="${contextPath}#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                            </ul>
                        </figcaption>
                    </figure>
                    <!-- end member -->
                </div>
                <!-- end col-3 -->
            </div>
            <!-- end row -->

            <div class="about-title">
                <h2>Bold History that Fuels the Future</h2>
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
                    when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap
                    into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum
                    passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
                    when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap
                    into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum
                    passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
            </div>
            <h2>Related Articles</h2>
            <div class="news-grid-2">
                <div class="row">
                    <div class="col-xs-6 col-sm-3 col-md-3">
                        <div class="grid-item">
                            <div class="grid-item-img">
                                <a href="${contextPath}#">
                                    <img src="${contextPath}/static/assets/images/218x150-1.jpg" class="img-responsive" alt="">
                                    <div class="link-icon"><i class="fa fa-play"></i></div>
                                </a>
                            </div>
                            <h5><a href="${contextPath}#" class="title">Lorem Ipsum is simply dummy text of the printing.</a></h5>
                            <ul class="authar-info">
                                <li>May 15, 2016</li>
                                <li class="hidden-sm"><a href="${contextPath}#" class="link">15 likes</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-xs-6 col-sm-3 col-md-3">
                        <div class="grid-item">
                            <div class="grid-item-img">
                                <a href="${contextPath}#">
                                    <img src="${contextPath}/static/assets/images/218x150-2.jpg" class="img-responsive" alt="">
                                    <div class="link-icon"><i class="fa fa-camera"></i></div>
                                </a>
                            </div>
                            <h5><a href="${contextPath}#" class="title">It is a long established fact that a reader will be distracted by</a></h5>
                            <ul class="authar-info">
                                <li>May 15, 2016</li>
                                <li class="hidden-sm"><a href="${contextPath}#" class="link">15 likes</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="hidden-xs col-sm-3 col-md-3">
                        <div class="grid-item">
                            <div class="grid-item-img">
                                <a href="${contextPath}#">
                                    <img src="${contextPath}/static/assets/images/218x150-3.jpg" class="img-responsive" alt="">
                                    <div class="link-icon"><i class="fa fa-camera"></i></div>
                                </a>
                            </div>
                            <h5><a href="${contextPath}#" class="title">There are many variations of passages of Lorem Ipsum.</a></h5>
                            <ul class="authar-info">
                                <li>May 15, 2016</li>
                                <li class="hidden-sm"><a href="${contextPath}#" class="link">15 likes</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="hidden-xs col-sm-3 col-md-3">
                        <div class="grid-item">
                            <div class="grid-item-img">
                                <a href="${contextPath}#">
                                    <img src="${contextPath}/static/assets/images/218x150-4.jpg" class="img-responsive" alt="">
                                    <div class="link-icon"><i class="fa fa-camera"></i></div>
                                </a>
                            </div>
                            <h5><a href="${contextPath}#" class="title">There are many variations of passages of Lorem Ipsum.</a></h5>
                            <ul class="authar-info">
                                <li>May 15, 2016</li>
                                <li class="hidden-sm"><a href="${contextPath}#" class="link">15 likes</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
<!-- *** END OF /. PAGE MAIN CONTENT *** -->
<!-- START FOOTER -->
<footer>
    <div class="container">
        <div class="row">
            <!-- START FOOTER BOX (About) -->
            <div class="col-sm-3 footer-box">
                <div class="about-inner">
                    <img src="${contextPath}/static/assets/images/logo-white.png" class="img-responsive" alt=""/>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy </p>
                    <ul>
                        <li><i class="ti-location-arrow"></i>1234 Heaven Stress, Beverly Hill.</li>
                        <li><i class="ti-mobile"></i>(800) 123 456 789</li>
                        <li><i class="ti-email"></i>Contact@erentheme.com</li>
                    </ul>
                </div>
            </div>
            <!--  END OF /. FOOTER BOX (About) -->
            <!-- START FOOTER BOX (Twitter feeds) -->
            <div class="col-sm-3 footer-box">
                <div class="twitter-inner">
                    <h3 class="wiget-title">twitter feeds</h3>
                    <ul class="margin-top-60">
                        <li>Typi non habent claritatem insitam est usus legent is iis qui facit claritatem. Investigatione <a href="${contextPath}https://t.co/erenthemeGHTQ">https://t.co/erenthemeGHTQ</a>
                            <span><i class="ti-twitter"></i>12 days ago</span>
                        </li>
                        <li>Typi non habent claritatem insitam est usus legent is <a href="${contextPath}https://t.co/erenthemeGHTQ">https://t.co/erenthemeGHTQ</a>
                            <span><i class="ti-twitter"></i>10 days ago</span>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- END OF /. FOOTER BOX (Twitter feeds) -->
            <!-- START FOOTER BOX (Category) -->
            <div class="col-sm-2 footer-box">
                <h3 class="wiget-title">Category</h3>
                <ul class="menu-services">
                    <li><a href="${contextPath}#">Business</a></li>
                    <li><a href="${contextPath}#">LifeStyle</a></li>
                    <li><a href="${contextPath}#">Technology</a></li>
                    <li><a href="${contextPath}#">Culture</a></li>
                    <li><a href="${contextPath}#">Entertainment</a></li>
                </ul>
            </div>
            <!-- END OF /. FOOTER BOX (Category) -->
            <!-- START FOOTER BOX (Recent Post) -->
            <div class="col-sm-4 footer-box">
                <h3 class="wiget-title">Recent Post</h3>
                <div class="footer-news-grid">
                    <div class="news-list-item">
                        <div class="img-wrapper">
                            <a href="${contextPath}#" class="thumb">
                                <img src="${contextPath}/static/assets/images/115x85-1.jpg" alt="" class="img-responsive">
                                <div class="link-icon">
                                    <i class="fa fa-camera"></i>
                                </div>
                            </a>
                        </div>
                        <div class="post-info-2">
                            <h5><a href="${contextPath}#" class="title">Cooking Recipes Anytime And Anywhere</a></h5>
                            <ul class="authar-info">
                                <li><i class="ti-timer"></i> May 15, 2016</li>
                            </ul>
                        </div>
                    </div>
                    <div class="news-list-item">
                        <div class="img-wrapper">
                            <a href="${contextPath}#" class="thumb">
                                <img src="${contextPath}/static/assets/images/115x85-2.jpg" alt="" class="img-responsive">
                                <div class="link-icon">
                                    <i class="fa fa-camera"></i>
                                </div>
                            </a>
                        </div>
                        <div class="post-info-2">
                            <h5><a href="${contextPath}#" class="title">Cooking Recipes Anytime And Anywhere</a></h5>
                            <ul class="authar-info">
                                <li><i class="ti-timer"></i> May 15, 2016</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END OF /. FOOTER BOX (Recent Post) -->
        </div>
    </div>
</footer>
<!-- END OF /. FOOTER -->
<!-- START SUB FOOTER -->
<div class="sub-footer">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-5 col-md-5">
                <div class="copy">Copyright@2017 I-News Inc.</div>
            </div>
            <div class="col-xs-12 col-sm-7 col-md-7">
                <ul class="footer-nav">
                    <li><a href="${contextPath}#">Privacy</a></li>
                    <li><a href="${contextPath}#">Contact</a></li>
                    <li><a href="${contextPath}#">About</a></li>
                    <li><a href="${contextPath}#">Donation</a></li>
                    <li><a href="${contextPath}#">F.A.Q</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- END OF /. SUB FOOTER -->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="${contextPath}/static/assets/js/jquery.min.js"></script>
<!-- jquery ui js -->
<script src="${contextPath}/static/assets/js/jquery-ui.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="${contextPath}/static/assets/js/bootstrap.min.js"></script>
<!-- Bootsnav js -->
<script src="${contextPath}/static/assets/bootsnav/js/bootsnav.js"></script>
<!-- theia sticky sidebar -->
<script src="${contextPath}/static/assets/js/theia-sticky-sidebar.js"></script>
<!-- youtube js -->
<script src="${contextPath}/static/assets/js/RYPP.js"></script>
<!-- owl include js plugin -->
<script src="${contextPath}/static/assets/owl-carousel/owl.carousel.min.js"></script>
<!-- custom js -->
<script src="${contextPath}/static/assets/js/custom.js"></script>
</body>
</html>
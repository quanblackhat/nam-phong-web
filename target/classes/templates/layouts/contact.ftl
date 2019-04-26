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
<!-- START PAGE TITLE -->
<div class="page-title">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-6 col-md-6">
                <h1><strong>Contact</strong></h1>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-6">
                <ol class="breadcrumb">
                    <li><a href="${contextPath}/index">Home</a></li>
                    <li class="active"><a href="${contextPath}contact.html">Contact</a></li>
                </ol>
            </div>
        </div>
    </div>
</div>
<!-- END OF /. PAGE TITLE -->
<!-- *** START PAGE MAIN CONTENT *** -->
<main class="page_main_wrapper">
    <div class="container">
        <div class="row row-m">
            <div class="col-sm-8 main-content col-p">
                <div class="theiaStickySidebar">
                    <!-- START CONTACT FORM AREA -->
                    <div class="contact_form_inner">
                        <div class="panel_inner">
                            <div class="panel_header">
                                <h4><strong>We'd Love to Here</strong> Form you, Get in Touch With in Us? </h4>
                            </div>
                            <div class="panel_body">
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy
                                    text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has
                                    survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
                                <form class="comment-form" action="#" method="post">
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <label for="name">full name*</label>
                                                <input type="text" class="form-control" id="name" name="name" placeholder="Your name*">
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <label for="email">Email*</label>
                                            <div class="form-group">
                                                <input type="text" class="form-control" id="email" name="email" placeholder="Your email address here">
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <label for="name">website</label>
                                                <input type="text" class="form-control" id="website" name="website" placeholder="Your website url">
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <label for="email">Subject</label>
                                            <div class="form-group">
                                                <input type="text" class="form-control" id="subject" name="subject" placeholder="Write subject here">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="email">message</label>
                                        <textarea class="form-control" id="message" name="message" placeholder="Your Comment*" rows="5"></textarea>
                                    </div>
                                    <a href="${contextPath}#"  class="btn btn-news"> Submit</a>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- END OF CONTACT FORM AREA -->
                </div>
            </div>
            <div class="col-sm-4 rightSidebar col-p">
                <div class="theiaStickySidebar">
                    <!-- START CONTACT INFO -->
                    <div class="panel_inner">
                        <div class="panel_header">
                            <h4><strong>Contact</strong> Info </h4>
                        </div>
                        <div class="panel_body">
                            <address> <strong>Twitter, Inc.</strong><br> 1355 Market Street, Suite 900<br> San Francisco, CA 94103<br> <abbr title="Phone">P:</abbr> (123) 456-7890 </address>
                            <address> <strong>Twitter, Inc.</strong><br> <abbr title="Phone">Phone:</abbr> 1.800.555.6789<br> Fax: 1.888.555.9876<br> <abbr title="Phone">P:</abbr> (123) 456-7890 </address>
                            <address> <strong>Full Name</strong><br> <a href="${contextPath}mailto:#">first.last@example.com</a> </address>
                        </div>
                    </div>
                    <!-- END OF /. CONTACT INFO -->
                    <!-- START SOCIAL ICON -->
                    <div class="social-media-inner">
                        <ul class="social-media clearfix">
                            <li>
                                <a href="${contextPath}#" class="rss">
                                    <i class="fa fa-rss"></i>
                                    <div>2,035</div>
                                    <p>Subscribers</p>
                                </a>
                            </li>
                            <li>
                                <a href="${contextPath}#" class="fb">
                                    <i class="fa fa-facebook"></i>
                                    <div>3,794</div>
                                    <p>Fans</p>
                                </a>
                            </li>
                            <li>
                                <a href="${contextPath}#" class="g_plus">
                                    <i class="fa fa-google-plus"></i>
                                    <div>941</div>
                                    <p>Followers</p>
                                </a>
                            </li>
                            <li>
                                <a href="${contextPath}#" class="you_tube">
                                    <i class="fa fa-youtube-play"></i>
                                    <div>7,820</div>
                                    <p>Subscribers</p>
                                </a>
                            </li>
                            <li>
                                <a href="${contextPath}#" class="twitter">
                                    <i class="fa fa-twitter"></i>
                                    <div>1,562</div>
                                    <p>Followers</p>
                                </a>
                            </li>
                            <li>
                                <a href="${contextPath}#" class="pint">
                                    <i class="fa fa-pinterest"></i>
                                    <div>1,310</div>
                                    <p>Followers</p>
                                </a>
                            </li>
                        </ul> <!-- /.social icon -->
                    </div>
                    <!-- END OF /. SOCIAL ICON -->
                </div>
            </div>
        </div>
        <div class="panel_inner">
            <div class="panel_body">
                <!-- The element that will contain Google Map. This is used in both the Javascript and CSS above. -->
                <div id="map"></div>
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
<!-- google map -->
<script src="${contextPath}https://maps.googleapis.com/maps/api/js?key=AIzaSyB4iuUg1YDRIBRZ5e-jdssfqDuT9VLiOnY"></script>
<script>
    // When the window has finished loading create our google map below
    google.maps.event.addDomListener(window, 'load', init);

    function init() {
        // Basic options for a simple Google Map
        // For more options see: https://developers.google.com/maps/documentation/javascript/reference#MapOptions
        var mapOptions = {
            // How zoomed in you want the map to start at (always required)
            zoom: 10, scrollwheel: false,
            // The latitude and longitude to center the map (always required)
            center: new google.maps.LatLng(23.8103968, 90.41256666), //Dhaka

            // How you would like to style the map.
            // This is where you would paste any style found on Snazzy Maps.
            styles: [{"featureType": "administrative", "elementType": "labels.text.fill", "stylers": [{"color": "#444444"}]}, {"featureType": "administrative.locality", "elementType": "labels.text.stroke", "stylers": [{"visibility": "on"}]}, {"featureType": "administrative.locality", "elementType": "labels.icon", "stylers": [{"visibility": "on"}, {"color": "#f1c40f"}]}, {"featureType": "landscape", "elementType": "all", "stylers": [{"color": "#f2f2f2"}]}, {"featureType": "poi", "elementType": "all", "stylers": [{"visibility": "off"}]}, {"featureType": "road", "elementType": "all", "stylers": [{"saturation": -100}, {"lightness": 45}]}, {"featureType": "road.highway", "elementType": "all", "stylers": [{"visibility": "simplified"}]}, {"featureType": "road.arterial", "elementType": "labels.icon", "stylers": [{"visibility": "off"}]}, {"featureType": "transit", "elementType": "all", "stylers": [{"visibility": "off"}]}, {"featureType": "water", "elementType": "all", "stylers": [{"color": "#eb0254"}, {"visibility": "on"}]}]
        };

        // image from external URL

        var myIcon = 'assets/images/marker.png';

        //preparing the image so it can be used as a marker
        //https://developers.google.com/maps/documentation/javascript/reference#Icon
        //includes hacky fix "size" to allow for wobble
        var catIcon = {
            url: myIcon,
        };

        // Get the HTML DOM element that will contain your map
        // We are using a div with id="map" seen below in the <body>
        var mapElement = document.getElementById('map');

        // Create the Google Map using our element and options defined above
        var map = new google.maps.Map(mapElement, mapOptions);

        // Let's also add a marker while we're at it
        var marker = new google.maps.Marker({
            position: new google.maps.LatLng(23.8103968, 90.41256666), //Dhaka
            map: map,
            icon: catIcon,
            title: 'Snazzy!',
            animation: google.maps.Animation.DROP,
        });
    }
</script>
</body>
</html>
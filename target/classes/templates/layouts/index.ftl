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

        <script src="${contextPath}/static/assets/js/jquery.min.js"></script>
        <script src="${contextPath}/static/assets/js/bootstrap.min.js"></script>
        <script src="${contextPath}/static/assets/js/jquery.twbsPagination.js"></script>
    </head>
    <body>
        <!-- PAGE LOADER -->
        <div class="se-pre-con"></div>
        <!-- *** START PAGE HEADER SECTION *** -->
        <#include "/fragments/header.ftl">
        <!-- *** END OF /. PAGE HEADER SECTION *** -->
        <!-- *** START PAGE MAIN CONTENT *** -->
        <main class="page_main_wrapper">
            <#include "/contents/trending.ftl">
            <#include "/contents/last-news-slide.ftl">
            <div class="container">
                <div class="row row-m">
                    <div class="col-sm-8 col-p main-content">
                        <div class="theiaStickySidebar">
                            <#include "/contents/popular-news.ftl">
                            <div class="add-inner">
                                <img src="${contextPath}/static/assets/images/add728x90-1.jpg" class="img-responsive" alt="">
                            </div>
                            <#--todo-->
                            <#include "/contents/travel-news.ftl">
                        </div>
                    </div>
                    <div class="col-sm-4 col-p rightSidebar">
                        <#include "/fragments/right-sidebar.ftl">
                    </div>
                </div>
            </div>
            <!-- START FEATURED NEWS -->
            <#include "/contents/featured-news.ftl">
            <!-- END OF /. FEATURED NEWS -->

            <!-- START YOUTUBE VIDEO -->
            <#include "/fragments/youtube-video.ftl">
            <!-- END OF /. YOUTUBE VIDEO -->

            <#include "/contents/more-news.ftl">

            <#include "/contents/lastest-news.ftl">
        </main>
        <!-- *** END OF /. PAGE MAIN CONTENT *** -->
        <!-- *** START FOOTER *** -->
        <#include "/fragments/footer.ftl">
        <!-- *** END OF /. FOOTER *** -->
        <!-- *** START SUB FOOTER *** -->
        <#include "/fragments/sub-footer.ftl">
        <!-- *** END OF /. SUB FOOTER *** -->
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="${contextPath}/static/assets/js/jquery-ui.min.js"></script>
        <script src="${contextPath}/static/assets/bootsnav/js/bootsnav.js"></script>
        <script src="${contextPath}/static/assets/js/theia-sticky-sidebar.js"></script>
        <script src="${contextPath}/static/assets/js/RYPP.js"></script>
        <script src="${contextPath}/static/assets/owl-carousel/owl.carousel.min.js"></script>
        <script src="${contextPath}/static/assets/js/custom.js"></script>
    </body>
</html>
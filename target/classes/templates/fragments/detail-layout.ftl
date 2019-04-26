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

        <link href="${contextPath}/static/assets/css/jquery-ui.min.css" rel="stylesheet" type="text/css"/>
        <link href="${contextPath}/static/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="${contextPath}/static/assets/css/animate.min.css" rel="stylesheet" type="text/css"/>
        <link href="${contextPath}/static/assets/bootsnav/css/bootsnav.css" rel="stylesheet" type="text/css"/>
        <link href="${contextPath}/static/assets/css/RYPP.css" rel="stylesheet" type="text/css"/>
        <link href="${contextPath}/static/assets/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="${contextPath}/static/assets/themify-icons/themify-icons.css" rel="stylesheet" type="text/css"/>
        <link href="${contextPath}/static/assets/weather-icons/css/weather-icons.min.css" rel="stylesheet" type="text/css"/>
        <link href="${contextPath}/static/assets/css/flaticon.css" rel="stylesheet" type="text/css"/>
        <link href="${contextPath}/static/assets/owl-carousel/owl.carousel.css" rel="stylesheet" type="text/css"/>
        <link href="${contextPath}/static/assets/owl-carousel/owl.theme.css" rel="stylesheet" type="text/css"/>
        <link href="${contextPath}/static/assets/owl-carousel/owl.transitions.css" rel="stylesheet" type="text/css"/>
        <link href="${contextPath}/static/assets/css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <!-- PAGE LOADER -->
        <#include "/fragments/setting.ftl">
        <!--<div class="se-pre-con"></div>-->
        <!-- *** START PAGE HEADER SECTION *** -->
        <header>
            <#include "/fragments/header.ftl">
            <#include "/fragments/menu.ftl">
        </header>
        <!-- *** END OF /. PAGE HEADER SECTION *** -->
        <!-- *** START PAGE MAIN CONTENT *** -->
        <main class="page_main_wrapper">
            <!-- START PAGE TITLE --> 
            <div class="page-title">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <h1><strong>${article.title}</strong></h1>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END OF /. PAGE TITLE --> 
            <div class="container">
                <div class="row row-m">
                    <!-- START MAIN CONTENT -->
                    <div class="col-sm-10 col-p  main-content">
                        <div class="theiaStickySidebar">
                            <div class="post_details_inner">
                                <#include CONTENT>
                            </div>
                            <#include "/fragments/related-article.ftl">
                            <#include "/fragments/comment.ftl">

                        </div>
                    </div>
                </div>
            </div>
        </main>
        <#include "/fragments/footer.ftl">
        <script src="${contextPath}/static/assets/js/jquery.min.js"></script>
        <script src="${contextPath}/static/assets/js/jquery-ui.min.js"></script>
        <script src="${contextPath}/static/assets/js/bootstrap.min.js"></script>
        <script src="${contextPath}/static/assets/bootsnav/js/bootsnav.js"></script>
        <script src="${contextPath}/static/assets/js/theia-sticky-sidebar.js"></script>
        <script src="${contextPath}/static/assets/js/RYPP.js"></script>
        <script src="${contextPath}/static/assets/owl-carousel/owl.carousel.min.js"></script>
        <!-- custom js -->
    </body>
</html>
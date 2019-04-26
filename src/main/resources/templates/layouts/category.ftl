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

        <script>
            $(document).ready(function () {
                $(function () {
                    if (${totalElements} >
                    0
                )
                    {
                        window.pagObj = $('#pagination').twbsPagination({
                            totalPages: ${totalPages},
                            visiblePages: ${visiblePage},
                            startPage: ${page},
                            first: '&laquo;',
                            prev: '',
                            next: '',
                            last: '&raquo;'
                        }).on('page', function (event, page) {
                            var url = "${contextPath}/category/${categoryCode}?page=" + page;
                            window.location.replace(url);
                        });
                    }
                });
            });
        </script>

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
                        <h1><strong>Category Style</strong> One</h1>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-6">
                        <ol class="breadcrumb">
                            <li><a href="${contextPath}index.html">Home</a></li>
                            <li class="active"><a href="${contextPath}category_style_1">Category Style One</a></li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
        <!-- END OF /. PAGE TITLE --> 
        <!-- *** START PAGE MAIN CONTENT *** -->
        <main class="page_main_wrapper">
            <!-- START POST BLOCK SECTION -->
            <section class="slider-inner">
                <div class="container">
                    <div class="row thm-margin">
                        <div class="col-xs-12 col-sm-6 col-md-6 thm-padding">
                            <div class="slider-wrapper">
                                <div id="owl-slider" class="owl-carousel owl-theme">
                                    <#list featuredArticles as article>
                                    <div class="item">
                                        <div class="slider-post post-height-1">
                                            <a href="${contextPath}${article.url}" class="news-image">
                                                <img src="${contextPath}/images/${article.image}" alt="Ảnh bài viết"
                                                     onerror="this.src='${contextPath}/static/assets/images/default.jpg'" class="img-responsive"></a>
                                            <div class="post-text">
                                                <span class="post-category">Business</span>
                                                <h2><a href="${contextPath}${article.url}">${article.title}</a></h2>
                                                <ul class="authar-info">
                                                    <li class="authar"><a href="${contextPath}#">${article.author}</a></li>
                                                    <li class="date">${article.dateCreated?string('dd.MM.yyyy')}</li>
                                                    <li class="view"><a href="${contextPath}#">25 views</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    </#list>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-6 thm-padding">
                            <div class="row slider-right-post thm-margin">
                                <#list featuredArticles as article>
                                <div class="col-xs-6 col-sm-6 col-md-6 thm-padding">
                                    <div class="slider-post post-height-2">
                                        <a href="${contextPath}${article.url}" class="news-image">
                                            <img src="${contextPath}/images/${article.image}" alt="Ảnh bài viết"
                                                onerror="this.src='${contextPath}/static/assets/images/default.jpg'" class="img-responsive"></a>
                                        <div class="post-text">
                                            <span class="post-category">Photography</span>
                                            <h4><a href="${contextPath}${article.url}">${article.title}</a></h4>
                                            <ul class="authar-info">
                                                <li class="authar hidden-xs hidden-sm"><a href="${contextPath}#">by david hall</a></li>
                                                <li class="hidden-xs">${article.dateCreated?string('dd.MM.yyyy')}</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <#if article?index == 3>
                                <#break>
                                </#if>
                                </#list>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- END OF /. POST BLOCK SECTION -->
            <div class="container">
                <div class="row row-m">
                    <!-- START MAIN CONTENT -->
                    <div class="col-sm-8 col-p  main-content">
                        <div class="theiaStickySidebar">
                            <div class="post-inner categoty-style-1">
                                <!-- post body -->
                                <div class="post-body">
                                    <div class="row row-m">
                                        <#list featuredArticles as article>
                                        <div class="col-sm-6 col-p">
                                            <article>
                                                <figure>
                                                    <a href="${contextPath}${article.url}"><img src="${contextPath}/images/${article.image}" alt="Ảnh bài viết"
                                                                    onerror="this.src='${contextPath}/static/assets/images/default.jpg'" height="242" width="345"  class="img-responsive"></a>
                                                    <span class="post-category">Business</span>
                                                </figure>
                                                <div class="post-info">
                                                    <h3><a href="${contextPath}${article.url}">${article.title}</a></h3>
                                                    <ul class="authar-info">
                                                        <li><i class="ti-timer"></i> ${article.dateCreated?string('dd.MM.yyyy')}</li>
                                                        <li><a href="${contextPath}#" class="link"><i class="ti-thumb-up"></i>15 likes</a></li>
                                                    </ul>
                                                </div>
                                            </article>
                                        </div>
                                        </#list>
                                    </div>
                                </div>
                                <!-- Post footer -->
                                <div class="post-footer"> 
                                    <div class="row thm-margin">
                                        <div class="col-xs-12 col-sm-12 col-md-12 thm-padding">
                                            <!-- pagination -->
                                            <div class="example">
                                                <ul id="pagination" class="pagination super-page"></ul>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div> <!-- /.Post footer-->
                            </div>
                        </div>
                    </div>
                    <!-- END OF /. MAIN CONTENT -->
                    <!-- START SIDE CONTENT -->
                    <div class="col-sm-4 col-p rightSidebar">
                        <div class="theiaStickySidebar">
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
                            <!-- START ADVERTISEMENT -->
                            <div class="add-inner">
                                <img src="${contextPath}/static/assets/images/add320x270-1.jpg" class="img-responsive" alt="">
                            </div>
                            <!-- END OF /. ADVERTISEMENT -->
                            <!-- START NAV TABS -->
                            <div class="tabs-wrapper">
                                <ul class="nav nav-tabs" role="tablist">
                                    <li role="presentation" class="active"><a href="${contextPath}#home" aria-controls="home" role="tab" data-toggle="tab">Most Viewed</a></li>
                                    <li role="presentation"><a href="${contextPath}#profile" aria-controls="profile" role="tab" data-toggle="tab">Popular news</a></li>
                                </ul>
                                <!-- Tab panels one --> 
                                <div class="tab-content">
                                    <div role="tabpanel" class="tab-pane fade in active" id="home">

                                        <div class="most-viewed">
                                            <ul id="most-today" class="content tabs-content">
                                                <#list featuredArticles as article>
                                                <li><span class="count">${article?index + 1}</span>
                                                    <span class="text"><a href="${contextPath}${article.url}">${article.title}</a></span></li>
                                                <#if article?index == 4>
                                                <#break>
                                                </#if>
                                                </#list>
                                            </ul>
                                        </div>
                                    </div>
                                    <!-- Tab panels two --> 
                                    <div role="tabpanel" class="tab-pane fade" id="profile">
                                        <div class="popular-news">
                                            <div class="p-post">
                                                <#list featuredArticles as article>
                                                <h4><a href="${contextPath}${article.url}">${article.title}</a></h4>
                                                <ul class="authar-info">
                                                    <li><a href="${contextPath}${article.url}" class="link"><i class="ti-timer"></i> ${article.dateCreated?string('dd.MM.yyyy')}</a></li>
                                                    <li><a href="${contextPath}#" class="link"><i class="ti-thumb-up"></i>15 likes</a></li>
                                                </ul>
                                                <div class="reatting-2">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star-half-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                </div>
                                                <#if article?index == 2>
                                                <#break>
                                                </#if>
                                                </#list>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- END OF /. NAV TABS -->
                        </div>
                    </div>
                    <!-- END OF /. SIDE CONTENT -->
                </div>
            </div>
        </main>
        <!-- *** END OF /. PAGE MAIN CONTENT *** -->
        <!-- START FOOTER -->
        <#include "/fragments/footer.ftl">
        <!-- *** END OF /. FOOTER *** -->
        <!-- *** START SUB FOOTER *** -->
        <#include "/fragments/sub-footer.ftl">
        <!-- END OF /. SUB FOOTER -->
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <!-- jquery ui js -->
        <script src="${contextPath}/static/assets/js/jquery-ui.min.js"></script>
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
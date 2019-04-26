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
            <!-- START PAGE TITLE --> 
            <div class="page-title">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <h1><strong>Post Style</strong> One</h1>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <ol class="breadcrumb">
                                <li><a href="${contextPath}/index">Home</a></li>
                                <li class="active"><a href="${contextPath}/">Post Style One</a></li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END OF /. PAGE TITLE --> 
            <div class="container">
                <div class="row row-m">
                    <!-- START MAIN CONTENT -->
                    <div class="col-sm-8 col-p  main-content">
                        <div class="theiaStickySidebar">
                            <div class="post_details_inner">
                                <div class="post_details_block">
                                    <figure class="social-icon">
                                        <img src="${contextPath}/images/${article.image}" alt="Ảnh bài viết"
                                             onerror="this.src='${contextPath}/static/assets/images/default.jpg'" class="img-responsive"/>
                                        <div>
                                            <a href="${contextPath}#"><i class="fa fa-facebook"></i></a>
                                            <a href="${contextPath}#"><i class="fa fa-twitter"></i></a>
                                            <a href="${contextPath}#"><i class="fa fa-google-plus"></i></a>
                                            <a href="${contextPath}#" class="hidden-xs"><i class="fa fa-linkedin"></i></a>
                                            <a href="${contextPath}#" class="hidden-xs"><i class="fa fa-pinterest-p"></i></a>
                                        </div>			
                                    </figure>
                                    <#if article?? && article.content != ''>
                                        <#--<h2>${article.title}</h2>-->
                                        ${article.content}
                                    <#else>
                                    <h5>Không có nội dung.</h5>
                                    </#if>
                                </div>
                                <!-- Post footer -->
                                <div class="post-footer"> 
                                    <div class="row thm-margin">
                                        <div class="col-xs-12 col-sm-12 col-md-12 thm-padding">
                                            <!-- pagination -->
                                            <ul class="pagination">
                                                <li class="disabled"><span class="ti-angle-left"></span></li>
                                                <li class="active"><span>1</span></li>
                                                <li><a href="${contextPath}#">2</a></li>
                                                <li><a href="${contextPath}#">3</a></li>
                                                <li class="disabled"><span class="extend">...</span></li><li>
                                                </li><li><a href="${contextPath}#">12</a></li>
                                                <li><a href="${contextPath}#"><i class="ti-angle-right"></i></a></li>
                                            </ul> <!-- /.pagination -->
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- START RELATED ARTICLES -->
                            <div class="post-inner post-inner-2">
                                <!--post header-->
                                <div class="post-head">
                                    <h2 class="title"><strong>Related </strong> Articles</h2>
                                </div>
                                <!-- post body -->
                                <div class="post-body">
                                    <div id="post-slider-2" class="owl-carousel owl-theme">
                                        <!-- item one -->
                                        <div class="item">
                                            <div class="news-grid-2">
                                                <div class="row row-margin">
                                                    <#list relatedArticlesOne as article>
                                                    <div class="col-xs-6 col-sm-4 col-md-4 col-padding">
                                                        <div class="grid-item">
                                                            <div class="grid-item-img">
                                                                <a href="${contextPath}${article.url}">
                                                                    <img src="${contextPath}/images/${article.image}" alt="Ảnh bài viết"
                                                                         onerror="this.src='${contextPath}/static/assets/images/default.jpg'" class="img-responsive">
                                                                    <div class="link-icon"><i class="fa fa-play"></i></div>
                                                                </a>
                                                            </div>
                                                            <h5><a href="${contextPath}${article.url}" class="title">${article.title}</a></h5>
                                                            <ul class="authar-info">
                                                                <li>${article.dateCreated?string('dd.MM.yyyy')}</li>
                                                                <li class="hidden-sm"><a href="${contextPath}#" class="link">15 likes</a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    </#list>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- item two -->
                                        <div class="item">
                                            <div class="news-grid-2">
                                                <div class="row row-margin">
                                                    <#list relatedArticlesTwo as article>
                                                    <div class="col-xs-6 col-sm-4 col-md-4 col-padding">
                                                        <div class="grid-item">
                                                            <div class="grid-item-img">
                                                                <a href="${contextPath}${article.url}">
                                                                    <img src="${contextPath}/images/${article.image}" alt="Ảnh bài viết"
                                                                         onerror="this.src='${contextPath}/static/assets/images/default.jpg'" class="img-responsive">
                                                                    <div class="link-icon"><i class="fa fa-play"></i></div>
                                                                </a>
                                                            </div>
                                                            <h5><a href="${contextPath}${article.url}" class="title">${article.title}</a></h5>
                                                            <ul class="authar-info">
                                                                <li>${article.dateCreated?string('dd.MM.yyyy')}</li>
                                                                <li class="hidden-sm"><a href="${contextPath}#" class="link">15 likes</a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    </#list>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Post footer -->
                                <div class="post-footer">
                                    <div class="row thm-margin">
                                        <div class="col-xs-12 col-sm-8 col-md-9 thm-padding">
                                            <a href="${contextPath}#" class="more-btn">More popular posts</a>
                                        </div>
                                        <div class="hidden-xs col-sm-4 col-md-3 thm-padding">
                                            <div class="social">
                                                <ul>
                                                    <li>
                                                        <div class="share transition">
                                                            <a href="${contextPath}#" target="_blank" class="ico fb"><i class="fa fa-facebook"></i></a>
                                                            <a href="${contextPath}#" target="_blank" class="ico tw"><i class="fa fa-twitter"></i></a>
                                                            <a href="${contextPath}#" target="_blank" class="ico gp"><i class="fa fa-google-plus"></i></a>
                                                            <a href="${contextPath}#" target="_blank" class="ico pin"><i class="fa fa-pinterest"></i></a>
                                                            <i class="ti-share ico-share"></i>
                                                        </div> 
                                                    </li>
                                                    <li><a href="${contextPath}#"><i class="ti-heart"></i></a></li>
                                                    <li><a href="${contextPath}#"><i class="ti-twitter"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- END OF /. RELATED ARTICLES -->
                            <!-- START COMMENT -->
                            <#include "/fragments/comment.ftl">

                        </div>
                    </div>
                    <!-- END OF /. MAIN CONTENT -->
                    <!-- START SIDE CONTENT -->
                    <div class="col-sm-4 col-p rightSidebar">
                        <div class="theiaStickySidebar">
                            <!-- START ADVERTISEMENT -->
                            <div class="add-inner">
                                <img src="${contextPath}/static/assets/images/add320x270-1.jpg" class="img-responsive" alt="">
                            </div>
                            <!-- END OF /. ADVERTISEMENT -->
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
                                                <#list mostView as article>
                                                    <li><span class="count">${article?index + 1}</span><span class="text"><a href="${contextPath}${article.url}">${article.title}</a></span></li>
                                                </#list>
                                            </ul>
                                        </div>
                                    </div>
                                    <!-- Tab panels two --> 
                                    <div role="tabpanel" class="tab-pane fade" id="profile">
                                        <div class="popular-news">
                                            <div class="p-post">
                                                <h4><a href="${contextPath}#">It is a long established fact that a reader will be distracted by  </a></h4>
                                                <ul class="authar-info">
                                                    <li><a href="${contextPath}#" class="link"><i class="ti-timer"></i> May 15, 2016</a></li>
                                                    <li><a href="${contextPath}#" class="link"><i class="ti-thumb-up"></i>15 likes</a></li>
                                                </ul>
                                                <div class="reatting-2">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star-half-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                </div>
                                            </div>
                                            <div class="p-post">
                                                <h4><a href="${contextPath}#">It is a long established fact that a reader will be distracted by  </a></h4>
                                                <ul class="authar-info">
                                                    <li><a href="${contextPath}#" class="link"><i class="ti-timer"></i> May 15, 2016</a></li>
                                                    <li><a href="${contextPath}#" class="link"><i class="ti-thumb-up"></i>15 likes</a></li>
                                                </ul>
                                                <div class="reatting-2">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star-half-o"></i>
                                                    <i class="fa fa-star-half-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                </div>
                                            </div>
                                            <div class="p-post">
                                                <h4><a href="${contextPath}#">It is a long established fact that a reader will be distracted by  </a></h4>
                                                <ul class="authar-info">
                                                    <li><a href="${contextPath}#" class="link"><i class="ti-timer"></i> May 15, 2016</a></li>
                                                    <li><a href="${contextPath}#" class="link"><i class="ti-thumb-up"></i>15 likes</a></li>
                                                </ul>
                                                <div class="reatting-2">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star-half-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                </div>
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
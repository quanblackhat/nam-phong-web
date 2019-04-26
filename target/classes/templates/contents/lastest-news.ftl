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
                    var url = "${contextPath}/?page=" + page;
                    window.location.replace(url);
                });
            }
        });
    });
</script>
<section class="articles-wrapper">
    <div class="container">
        <div class="row row-m">
            <div class="col-sm-8 main-content col-p">
                <div class="theiaStickySidebar">
                    <!-- START POST CATEGORY STYLE FOUR (Latest articles ) -->
                    <div class="post-inner">
                        <!--post header-->
                        <div class="post-head">
                            <h2 class="title"><strong>Latest</strong> articles</h2>
                        </div>
                        <!-- post body -->
                        <div class="post-body">
                            <#list lastArticles as article>
                                <div class="news-list-item articles-list">
                                    <div class="img-wrapper">
                                        <a href="${contextPath}#" class="thumb"><img src="${contextPath}/images/${article.image}" alt="Ảnh bài viết"
                                                                       onerror="this.src='${contextPath}/static/assets/images/default.jpg'" class="img-responsive"></a>
                                    </div>
                                    <div class="post-info-2">
                                        <h4><a href="${contextPath}${article.url}" class="title">${article.title}</a></h4>
                                        <ul class="authar-info">
                                            <li><i class="ti-timer"></i> ${article.dateCreated?string('dd.MM.yyyy')}</li>
                                            <li class="like"><a href="${contextPath}#"><i class="ti-thumb-up"></i>15 likes</a></li>
                                        </ul>
                                        <p class="hidden-sm">${article.header}</p>
                                    </div>
                                </div>
                            </#list>

                        </div> <!-- /. post body -->
                        <!--Post footer-->
                        <div class="post-footer">
                            <div class="row thm-margin">
                                <div class="col-xs-12 col-sm-8 col-md-9 thm-padding">
                                    <!-- pagination -->
                                    <div class="example">
                                        <ul id="pagination" class="pagination super-page"></ul>
                                        <div class="clearfix"></div>
                                    </div>
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
                        </div> <!-- /.Post footer-->
                    </div>
                    <!-- END OF /. POST CATEGORY STYLE FOUR (Latest articles ) -->
                </div>
            </div>
            <div class="col-sm-4 rightSidebar col-p">
                <div class="theiaStickySidebar">
                    <!-- START ARCHIVE -->
                    <div class="archive-wrapper">
                        <div id="datepicker"></div>
                    </div>
                    <!-- END OF /. ARCHIVE -->
                    <!-- START POLL WIDGET -->
                    <div class="panel_inner poll-widget">
                        <div class="panel_header">
                            <h4><strong>Poll</strong></h4>
                        </div>
                        <div class="panel_body poll-content">
                            <form method="get" id="home_poll">
                                <h6>Is it fair for the WICB to ask for 20% of players' fees to allow them to participate in overseas T20 leagues?</h6>
                                <ul>
                                    <li><input id="poll_5444" value="5444" name="poll" type="radio"><label for="poll_5444">Yes, they have invested in developing talent</label></li>
                                    <li><input id="poll_5445" value="5445" name="poll" type="radio"><label for="poll_5445">No, this is restraint of trade</label></li>
                                </ul>
                                <a href="${contextPath}#" class="btn btn-news">Submit</a>
                            </form>
                        </div>
                    </div>
                    <!-- END OF /. POLL WIDGET -->
                    <!-- START TAGS -->
                    <div class="panel_inner">
                        <div class="panel_header">
                            <h4><strong>Tags </strong></h4>
                        </div>
                        <div class="panel_body">
                            <div class="tags-inner">
                                <a class="ui tag">Nature</a>
                                <a class="ui tag">Fashion</a>
                                <a class="ui tag">Wordpress</a>
                                <a class="ui tag">Photo</a>
                                <a class="ui tag">Travel</a>
                                <a class="ui tag">Hotel</a>
                                <a class="ui tag">Business</a>
                                <a class="ui tag">Culture</a>
                                <a class="ui tag">Sports</a>
                                <a class="ui tag">Design</a>
                                <a class="ui tag">Entertainment </a>
                            </div>
                        </div>
                    </div>
                    <!-- END OF /. TAGS -->
                </div>
            </div>
        </div>
    </div>
</section>
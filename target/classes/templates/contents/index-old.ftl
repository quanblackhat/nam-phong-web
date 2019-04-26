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
<div class="theiaStickySidebar" style="padding-top: 5px">
    <!-- START POST CATEGORY STYLE ONE (Popular news) -->
    <div class="post-inner">
        <!--post header-->
        <div class="post-head">
            <h2 class="title"><strong>Bài viết mới</strong></h2>
        </div>
        <!-- post body -->
        <div class="post-body">
            <div id="post-slider" class="owl-carousel owl-theme">
                <!-- item one -->
                <div class="item">
                    <div class="row">
                        <div class="col-sm-6 main-post-inner bord-right">
                            <article>
                                <figure>
                                    <a href="${contextPath}${article.url}"><img src="${contextPath}/images/${article.image}" alt="Ảnh bài viết"
                                                                         onerror="this.src='${contextPath}/static/assets/images/default.jpg'"
                                                    height="242" width="345" class="img-responsive"></a>
                                </figure>
                                <div class="post-info">
                                    <h3><a href="${contextPath}/detail/${article.id}">${article.title}</a></h3>
                                    <p>${article.header}</p>
                                </div>
                            </article>
                        </div>
                        <div class="col-sm-6">
                            <div class="news-list">
                                <#list lastArticles as article>
                                    <div class="news-list-item">
                                        <div class="img-wrapper">
                                            <a href="${contextPath}${article.url}" class="thumb">
                                                <img src="${contextPath}/images/${article.image}" alt="Ảnh bài viết"
                                                     onerror="this.src='${contextPath}/static/assets/images/default.jpg'" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="post-info-2">
                                            <h5><a href="${contextPath}${article.url}" class="title">${article.title}</a></h5>
                                        </div>
                                    </div>
                                </#list>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Post footer -->
        <div class="post-footer">
            <div class="row">
                <div class="col-md-12">
                    <div class="example">
                        <ul id="pagination" class="pagination super-page"></ul>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
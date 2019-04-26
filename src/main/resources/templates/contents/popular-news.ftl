<div class="post-inner">
    <!--post header-->
    <div class="post-head">
        <h2 class="title"><strong>Tin quốc tế</strong></h2>
        <div class="filter-nav">
            <ul>
                <li><a href="${contextPath}#" class="active">all</a></li>
                <li><a href="${contextPath}#">business</a></li>
                <li><a href="${contextPath}#">gadgets</a></li>
                <li><a href="${contextPath}#">design</a></li>
                <li><a href="${contextPath}#">fashion</a></li>
                <li><a href="${contextPath}#">video</a></li>
            </ul>
        </div>
    </div>
    <!-- post body -->
    <div class="post-body">
        <div id="post-slider" class="owl-carousel owl-theme">
            <!-- item one -->
            <div class="item">
                <div class="row">
                    <#list internationalArticles as article>
                        <#if article?index == 0>
                            <div class="col-sm-6 main-post-inner bord-right">
                                <article>
                                    <figure>
                                        <a href="${contextPath}${article.url}"><img src="${contextPath}/images/${article.image}" alt="Ảnh bài viết"
                                                                      onerror="this.src='${contextPath}/static/assets/images/default.jpg'"
                                                                      height="242" width="345" class="img-responsive"></a>
                                    </figure>
                                    <div class="post-info">
                                        <h3><a href="${contextPath}${article.url}">${article.title}</a></h3>
                                        <ul class="authar-info">
                                            <li><i class="ti-timer"></i>${article.dateCreated?string('dd.MM.yyyy')}</li>
                                            <li class="like"><a href="${contextPath}#"><i class="ti-thumb-up"></i>15 likes</a></li>
                                        </ul>
                                        <p>${article.header}</p>
                                    </div>
                                </article>
                            </div>
                        <#else>
                            <div class="col-sm-6">
                                <div class="news-list">
                                    <div class="news-list-item">
                                        <div class="img-wrapper">
                                            <a href="${contextPath}${article.url}" class="thumb">
                                                <img src="${contextPath}/images/${article.image}" alt="Ảnh bài viết"
                                                     onerror="this.src='${contextPath}/static/assets/images/default.jpg'" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="post-info-2">
                                            <h5><a href="${contextPath}${article.url}" class="title">${article.title}</a></h5>
                                            <ul class="authar-info">
                                                <li><i class="ti-timer"></i>${article.dateCreated?string('dd.MM.yyyy')}</li>
                                                <li class="like hidden-xs hidden-sm"><a href="${contextPath}#"><i class="ti-thumb-up"></i>15 likes</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </#if>
                        <#if article?index == 4>
                        <#break>
                        </#if>
                    </#list>
                </div>
            </div>
            <!-- item two -->
            <div class="item">
                <div class="row">
                    <#list internationalArticles as article>
                    <#if article?index < 5>
                    <#continue>
                    </#if>
                    <#if article?index == 5>
                    <div class="col-sm-6 main-post-inner bord-right">
                        <article>
                            <figure>
                                <a href="${contextPath}${article.url}"><img src="${contextPath}/images/${article.image}" alt="Ảnh bài viết"
                                                              onerror="this.src='${contextPath}/static/assets/images/default.jpg'"
                                                              height="242" width="345" class="img-responsive"></a>
                            </figure>
                            <div class="post-info">
                                <h3><a href="${contextPath}${article.url}">${article.title}</a></h3>
                                <ul class="authar-info">
                                    <li><i class="ti-timer"></i>${article.dateCreated?string('dd.MM.yyyy')}</li>
                                    <li class="like"><a href="${contextPath}#"><i class="ti-thumb-up"></i>15 likes</a></li>
                                </ul>
                                <p>${article.header}</p>
                            </div>
                        </article>
                    </div>
                    <#else>
                    <div class="col-sm-6">
                        <div class="news-list">
                            <div class="news-list-item">
                                <div class="img-wrapper">
                                    <a href="${contextPath}${article.url}" class="thumb">
                                        <img src="${contextPath}/images/${article.image}" alt="Ảnh bài viết"
                                             onerror="this.src='${contextPath}/static/assets/images/default.jpg'" class="img-responsive">
                                    </a>
                                </div>
                                <div class="post-info-2">
                                    <h5><a href="${contextPath}${article.url}" class="title">${article.title}</a></h5>
                                    <ul class="authar-info">
                                        <li><i class="ti-timer"></i>${article.dateCreated?string('dd.MM.yyyy')}</li>
                                        <li class="like hidden-xs hidden-sm"><a href="${contextPath}#"><i class="ti-thumb-up"></i>15 likes</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </#if>
                <#if article?index == 9>
                <#break>
                </#if>
                </#list>
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
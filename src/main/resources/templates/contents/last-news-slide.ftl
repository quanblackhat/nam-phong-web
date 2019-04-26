<section class="slider-inner">
    <div class="container">
        <div class="row thm-margin">
            <div class="col-xs-12 col-sm-8 col-md-8 thm-padding">
                <div class="slider-wrapper">
                    <div id="owl-slider" class="owl-carousel owl-theme">

                        <#list lastArticles as article>
                        <div class="item">
                            <div class="slider-post post-height-1">
                                <a href="${contextPath}${article.url}" class="news-image"><img src="${contextPath}/images/${article.image}" alt="Ảnh bài viết"
                                                                    onerror="this.src='${contextPath}/static/assets/images/default.jpg'" class="img-responsive"></a>
                                <div class="post-text">
                                    <h2><a href="${contextPath}${article.url}">${article.title}</a></h2>
                                    <ul class="authar-info">
                                        <li class="authar"> ${article.author}</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        </#list>
                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-sm-4 col-md-4 thm-padding">
                <div class="row slider-right-post thm-margin">
                    <#list lastArticles as article>
                    <div class="col-xs-6 col-sm-12 col-md-12 thm-padding">
                        <div class="slider-post post-height-2">
                            <a href="${contextPath}${article.url}" class="news-image"><img src="${contextPath}/images/${article.image}" alt="Ảnh bài viết"
                                                                             onerror="this.src='${contextPath}/static/assets/images/default.jpg'" class="img-responsive"></a>
                            <div class="post-text">
                                <h4><a href="${contextPath}${article.url}">${article.title}</a></h4>
                                <ul class="authar-info">
                                    <li class="authar hidden-xs hidden-sm">${article.author}</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <#if article?index == 1>
                        <#break>
                    </#if>
                    </#list>
                </div>
            </div>
        </div>
    </div>
</section>
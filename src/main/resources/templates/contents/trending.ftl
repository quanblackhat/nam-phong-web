<div class="container">
    <div class="newstricker_inner">
        <div class="trending"><strong>Trending</strong> Now</div>
        <div id="NewsTicker" class="owl-carousel owl-theme">
            <#list lastArticles as article>
            <div class="item">
                <a href="${contextPath}${article.url}">${article.title}</a>
            </div>
            </#list>
        </div>
    </div>
</div>
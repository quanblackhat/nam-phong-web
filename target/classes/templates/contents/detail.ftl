<div>
    <div class="container">
        <div class="row">
            <div id="main" class="col-md-9">
                <div class="blog-post">
                    <#if article?? && article.content != ''>
                        <#--<h4>${article.title}</h4>-->
                        ${article.content}
                    <#else>
                        <h5>Không có nội dung.</h5>
                    </#if>
                </div>
            </div>
        </div>
    </div>
</div>

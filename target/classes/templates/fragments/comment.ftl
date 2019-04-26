<div class="comments-container">
    <h3>Comments (3)</h3>
    <ul class="comments-list">
        <li>
            <div class="comment-main-level">
                <!-- Avatar -->
                <div class="comment-avatar"><img src="${contextPath}/static/assets/images/avatar-1.jpg" alt=""></div>
                <div class="comment-box">
                    <div class="comment-content">
                        <div class="comment-header"> <cite class="comment-author">- Mozammel Hoque</cite>
                            <time datetime="2012-10-27" class="comment-datetime">25 October 2016 at 12.27 pm</time>
                        </div>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit omnis animi et iure laudantium vitae, praesentium optio, sapiente distinctio illo?</p>
                        <a href="${contextPath}#"  class="btn btn-news"> Reply</a>
                    </div>
                </div>
            </div>
            <ul class="comments-list reply-list">
                <li>
                    <!-- Avatar -->
                    <div class="comment-avatar"><img src="${contextPath}/static/assets/images/avatar-1.jpg" alt=""></div>
                    <div class="comment-box">
                        <div class="comment-content">
                            <div class="comment-header"> <cite class="comment-author">- Tahmina Akthr</cite>
                                <time datetime="2012-10-27" class="comment-datetime">25 October 2016 at 12.27 pm</time>
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit omnis animi et iure laudantium vitae, praesentium optio, sapiente distinctio illo?</p>
                            <a href="${contextPath}#"  class="btn btn-news"> Reply</a>
                        </div>
                    </div>
                </li>
                <li>
                    <!-- Avatar -->
                    <div class="comment-avatar"><img src="${contextPath}/static/assets/images/avatar-1.jpg" alt=""></div>
                    <div class="comment-box">
                        <div class="comment-content">
                            <div class="comment-header"> <cite class="comment-author">- Mozammel Hoque</cite>
                                <time datetime="2012-10-27" class="comment-datetime">25 October 2016 at 12.27 pm</time>
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit omnis animi et iure laudantium vitae, praesentium optio, sapiente distinctio illo?</p>
                            <a href="${contextPath}#"  class="btn btn-news"> Reply</a>
                        </div>
                    </div>
                </li>
            </ul>
        </li>
        <li>
            <div class="comment-main-level">
                <!-- Avatar -->
                <div class="comment-avatar"><img src="${contextPath}/static/assets/images/avatar-1.jpg" alt=""></div>
                <div class="comment-box">
                    <div class="comment-content">
                        <div class="comment-header"> <cite class="comment-author">- Tahmina Akthr</cite>
                            <time datetime="2012-10-27" class="comment-datetime">25 October 2016 at 12.27 pm</time>
                        </div>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit omnis animi et iure laudantium vitae, praesentium optio, sapiente distinctio illo?</p>
                        <a href="${contextPath}#"  class="btn btn-news"> Reply</a>
                    </div>
                </div>
            </div>
        </li>
    </ul>
</div>

<form class="comment-form" action="#" method="post">
    <h3><strong>Leave</strong> a Comment</h3>
    <div class="row">
        <div class="col-sm-6">
            <div class="form-group">
                <label for="name">full name*</label>
                <input type="text" class="form-control" id="name" name="name" placeholder="Your name*">
            </div>
        </div>
        <div class="col-sm-6">
            <label for="email">Email*</label>
            <div class="form-group">
                <input type="text" class="form-control" id="email" name="email" placeholder="Your email address here">
            </div>
        </div>
        <div class="col-sm-6">
            <div class="form-group">
                <label for="name">website</label>
                <input type="text" class="form-control" id="website" name="website" placeholder="Your website url">
            </div>
        </div>
        <div class="col-sm-6">
            <label for="email">Subject</label>
            <div class="form-group">
                <input type="text" class="form-control" id="subject" name="subject" placeholder="Write subject here">
            </div>
        </div>
    </div>
    <div class="form-group">
        <label for="email">message</label>
        <textarea class="form-control" id="message" name="message" placeholder="Your Comment*" rows="5"></textarea>
    </div>
    <a href="${contextPath}#"  class="btn btn-news"> Submit</a>
</form>
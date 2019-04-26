<div class="theiaStickySidebar">
    <!-- START WEATHER -->
    <div class="weather-wrapper">
        <div class="row thm-margin">
            <div class="col-xs-3 col-sm-4 col-md-3 col-lg-3 weather-week thm-padding">
                <div class="list-group">
                    <a href="${contextPath}#" class="list-group-item active">
                        <i class="flaticon-cloudy"></i>
                        <div>Tue, 34°F</div>
                    </a>
                    <a href="${contextPath}#" class="list-group-item">
                        <i class="flaticon-sun"></i>
                        <div>Wed, 38°F</div>
                    </a>
                    <a href="${contextPath}#" class="list-group-item">
                        <i class="flaticon-cloud"></i>
                        <div>thu, 32°F</div>
                    </a>
                    <a href="${contextPath}#" class="list-group-item">
                        <i class="flaticon-rain"></i>
                        <div>Fri, 31°F</div>
                    </a>
                </div>
            </div>
            <div class="col-xs-9 col-sm-8 col-md-9 col-lg-9 bhoechie-tab thm-padding">
                <!-- weather temperature -->
                <div class="weather-temp-wrap active">
                    <div class="city-day">
                        <div class="city">Dhaka</div>
                        <div class="day">Tuesday, 8.00pm</div>
                    </div>
                    <div class="weather-icon">
                        <i class="flaticon-cloudy"></i>
                        <div class="main-temp">34°F</div>
                    </div>
                    <div class="break">
                        <div class="wind-condition"> Wind: 13mph WSW</div>
                        <div class="humidity">Humidity: 91%</div>
                    </div>
                </div>
                <!-- weather temperature -->
                <div class="weather-temp-wrap">
                    <div class="city-day">
                        <div class="city">Dhaka</div>
                        <div class="day">Wednesday, 8.00pm</div>
                    </div>
                    <div class="weather-icon">
                        <i class="flaticon-sun"></i>
                        <div class="main-temp">38°F</div>
                    </div>
                    <div class="break">
                        <div class="wind-condition"> Wind: 11mph WSW</div>
                        <div class="humidity">Humidity: 89%</div>
                    </div>
                </div>
                <!-- weather temperature -->
                <div class="weather-temp-wrap">
                    <div class="city-day">
                        <div class="city">Dhaka</div>
                        <div class="day">Wednesday, 8.00pm</div>
                    </div>
                    <div class="weather-icon">
                        <i class="flaticon-cloud"></i>
                        <div class="main-temp">32°F</div>
                    </div>
                    <div class="break">
                        <div class="wind-condition"> Wind: 11mph WSW</div>
                        <div class="humidity">Humidity: 89%</div>
                    </div>
                </div>
                <!-- weather temperature -->
                <div class="weather-temp-wrap">
                    <div class="city-day">
                        <div class="city">Dhaka</div>
                        <div class="day">Friday, 8.00pm</div>
                    </div>
                    <div class="weather-icon">
                        <i class="flaticon-rain"></i>
                        <div class="main-temp">31°F</div>
                    </div>
                    <div class="break">
                        <div class="wind-condition"> Wind: 16mph WSW</div>
                        <div class="humidity">Humidity: 93%</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- END OF /. WEATHER -->
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
                    <id="most-today" class="content tabs-content">
                        <#list lastArticles as article>
                        <li><span class="count">${article?index + 1}</span><span class="text"><a href="${contextPath}${article.url}">${article.title}</a></span></li>
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
                        <h4><a href="${contextPath}#">It is a long established fact that a reader will be distracted by  </a></h4>
                        <ul class="authar-info">
                            <li class="date"><a href="${contextPath}#"><i class="ti-timer"></i> May 15, 2016</a></li>
                            <li class="like"><a href="${contextPath}#"><i class="ti-thumb-up"></i>15 likes</a></li>
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
                            <li class="date"><a href="${contextPath}#"><i class="ti-timer"></i> May 15, 2016</a></li>
                            <li class="like"><a href="${contextPath}#"><i class="ti-thumb-up"></i>15 likes</a></li>
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
                            <li class="date"><a href="${contextPath}#"><i class="ti-timer"></i> May 15, 2016</a></li>
                            <li class="like"><a href="${contextPath}#"><i class="ti-thumb-up"></i>15 likes</a></li>
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
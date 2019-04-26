<header>
    <#include "/fragments/header-top.ftl">

    <!-- START NAVIGATION -->
    <nav class="navbar navbar-default navbar-sticky navbar-mobile bootsnav">
        <!-- Start Top Search -->
        <div class="top-search">
            <div class="container">
                <div class="input-group">
                    <span class="input-group-addon"><i class="fa fa-search"></i></span>
                    <input type="text" class="form-control" placeholder="Search">
                    <span class="input-group-addon close-search"><i class="fa fa-times"></i></span>
                </div>
            </div>
        </div>
        <!-- End Top Search -->
        <div class="container">
            <!-- Start Atribute Navigation -->
            <div class="attr-nav">
                <ul>
                    <li class="search"><a href="${contextPath}#"><i class="fa fa-search"></i></a></li>
                </ul>
            </div>
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-menu">
                    <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand hidden-sm hidden-md hidden-lg" href="${contextPath}#brand"><img src="${contextPath}/static/assets/images/logo.png" class="logo" alt=""></a>
            </div>
            <!-- End Header Navigation -->
            <#include "/fragments/menu.ftl">
        </div>
    </nav>
    <!-- END OF/. NAVIGATION -->
</header>
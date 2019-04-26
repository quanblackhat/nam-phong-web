<div class="collapse navbar-collapse" id="navbar-menu">
    <ul class="nav navbar-nav navbar-left" data-in="" data-out="">
        <#list menus as menu>
        <#--level 1-->
            <#if menu.subMenus?size gt 0>
                <li class="dropdown">
                    <a href="${contextPath}#" class="dropdown-toggle" data-toggle="dropdown">${menu.title}</a>
                    <ul class="dropdown-menu">
                        <#list menu.subMenus as menu>
                        <#--level 2-->
                            <#if menu.subMenus?size gt 0>
                                <li class="dropdown">
                                    <a href="${contextPath}#" class="dropdown-toggle" data-toggle="dropdown">${menu.title}</a>
                                    <ul class="dropdown-menu">
                                        <#list menu.subMenus as menu>
                                        <#--level 3-->
                                            <#if menu.subMenus?size gt 0>
                                                <li class="dropdown">
                                                    <a href="${contextPath}#" class="dropdown-toggle" data-toggle="dropdown">${menu.title}</a>
                                                    <ul class="dropdown-menu">
                                                        <#list menu.subMenus as menu>
                                                        <#--level 4-->
                                                            <#if menu.subMenus?size gt 0>
                                                                <li class="dropdown">
                                                                    <a href="${contextPath}#" class="dropdown-toggle" data-toggle="dropdown">${menu.title}</a>
                                                                    <ul class="dropdown-menu">
                                                                        <#list menu.subMenus as menu>
                                                                            <li><a href="${contextPath}${menu.link}">${menu.title}</a></li>
                                                                        </#list>
                                                                    </ul>
                                                                </li>
                                                            <#else>
                                                                <li><a href="${contextPath}${menu.link}">${menu.title}</a></li>
                                                            </#if>
                                                        </#list>
                                                    </ul>
                                                </li>
                                            <#else>
                                                <li><a href="${contextPath}${menu.link}">${menu.title}</a></li>
                                            </#if>
                                        </#list>
                                    </ul>
                                </li>
                            <#else>
                                <li><a href="${contextPath}${menu.link}">${menu.title}</a></li>
                            </#if>
                        </#list>
                    </ul>
                </li>
            <#else>
                <li><a href="${contextPath}${menu.link}">${menu.title}</a></li>
            </#if>
        </#list>
    </ul>
</div>
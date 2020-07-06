<header class="nav-wrapper -sticky ">
    <nav class="nav ">
        <button class="toggle-nav">
            <div class="burger -squeeze">
                <span class="burger-lines"></span>
            </div>
        </button>
        <#if settings.header_logoimg?? && settings.header_logoimg!=''>
            <a href="${blog_url!}" id="headerLogo" class="logo-link"
               onfocus="this.blur();">
                <img src="${settings.header_logoimg}" alt="${blog_title!}" class="logo" id="logo" style="height: 3rem"/>
            </a>
        </#if>
        <ul class="nav-list " role="navigation">
            <div class="list -left ">
                <@menuTag method="tree">
                    <#list menus?sort_by('priority') as menu>
                        <li class="item">
                            <a class="link md:text-base sm:text-sm " href="${menu.url!}" target="${menu.target!}">${menu.name}</a>
                        </li>
                    </#list>
                </@menuTag>
            </div>
            <div class="list -right">
                <div class="overlay"></div>
            </div>
        </ul>
    </nav>
</header>
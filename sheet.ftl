<#include "module/macro.ftl">
<@layout title="${sheet.title!} | ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}">
    <main class="mx-auto">
        <header class="bg-cover post-cover">
            <#if settings.links_patternimg?? && settings.links_patternimg!=''>
                <div class="w-screen cover-bg">
                    <img src="${settings.links_patternimg!}" class="z-auto"
                         alt="${settings.links_title!'Friends'}">
                </div>
            <#else>
                <div class="placeholder-bg">
                </div>
            </#if>
            <div class="cover-content">
                <!-- 封面内容 -->
                <div class="inner flex flex-col justify-center">
                    <h2 class="slogan text-center">${settings.links_title!'Friends'}</h2>
                </div>
            </div>
        </header>
        <div class="container mx-auto md-content px-4 mt-16 max-w-6xl tracking-wider md:leading-relaxed sm:leading-normal ct-container cn-pd">
            ${sheet.formatContent!}
        </div>
    </main>
    <div class="container mx-auto px-4 mt-16 max-w-6xl tracking-wider md:leading-relaxed sm:leading-normal ct-container cn-pd">
        <#include "module/comment.ftl">
        <@comment post=sheet type="sheet" />
    </div>
</@layout>

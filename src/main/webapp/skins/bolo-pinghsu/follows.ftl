<#--

    Bolo - A stable and beautiful blogging system based in Solo.
    Copyright (c) 2020-present, https://github.com/bolo-blog

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.

-->
<#include "../../common-template/macro-common_head.ftl">
    <!DOCTYPE html>
    <html>

    <head>
        <@head title="${followLabel} - ${blogTitle}">
            <link rel="stylesheet" href="${staticServePath}/skins/${skinDirName}/css/base.css?${staticResourceVersion}" />
        </@head>
    </head>

    <body class="body--gray">
        <#include "header.ftl">
            <main id="pjax" class="fn__flex-1">
                <#if pjax>
                    <!---- pjax {#pjax} start ---->
                </#if>
                <div class="wrapper--min wrapper">
                    <div class="page__title">
                        <span class="ft__red">#</span>
                        ${followLabel}
                    </div>
                    <div class="page__content fn__clear">
                        <#if 0 !=follows?size>
                            <#list follows as follow>
                                <a rel="friend" href="${servePath}/follow/articles/${follow.followTitle}"
                                    class="page__item"
                                    title="${follow.followDescription}"
                                    target="_blank">
                                    ${follow.followTitle}
                                </a>
                            </#list>
                        </#if>
                    </div>
                </div>
                <#if pjax>
                    <!---- pjax {#pjax} end ---->
                </#if>
            </main>
            <#include "footer.ftl">
    </body>

    </html>
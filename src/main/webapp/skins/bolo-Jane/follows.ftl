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

    <body>
        <#include "header.ftl">
            <div id="pjax" class="wrapper">
                <#if pjax>
                    <!---- pjax {#pjax} start ---->
                </#if>
                <div class="article__item">
                    <h2 class="article__title">
                        <i class="icon__link"></i>
                        ${followLabel}
                    </h2>
                    <div class="ft__gray">
                        ${follows?size} ${cntLabel}${followLabel}
                    </div>
                    <div class="tags fn__clear">
                        <#list follows as follow>
                            <a rel="friend" class="ft__red" href="${servePath}/follow/articles/${follow.followTitle}"
                                target="_blank">
                                ${follow.followTitle}
                                <#if follow.followDescription !=''>
                                    <span class="ft__gray">(${follow.followDescription})</span>
                                </#if>
                            </a>
                        </#list>
                    </div>
                </div>
                <#if pjax>
                    <!---- pjax {#pjax} end ---->
                </#if>
            </div>
            <#include "footer.ftl">
    </body>

    </html>
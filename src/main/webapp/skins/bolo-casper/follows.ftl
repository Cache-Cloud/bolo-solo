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
        <@head title="${linkLabel} - ${blogTitle}">
            <link rel="stylesheet" href="${staticServePath}/skins/${skinDirName}/css/base.css?${staticResourceVersion}" />
        </@head>
    </head>

    <body class="fn__flex-column">
        <div id="pjax" class="fn__flex-1">
            <#if pjax>
                <!---- pjax {#pjax} start ---->
            </#if>
            <#include "macro-header.ftl">
                <@header type='other'></@header>
                <div class="wrapper other">
                    <h2 class="other__title"><a href="${servePath}" class="ft__a">
                            ${blogTitle}
                        </a> - ${followLabel}
                    </h2>
                    <div class="other__meta">
                        ${follows?size} ${followLabel}
                    </div>
                    <div class="other__content">
                        <#if 0 !=follows?size>
                            <#list follows as follow>
                                <div class="other__item">
                                    <a rel="friend" href="${servePath}/follow/articles/${follow.followTitle}" target="_blank">
                                        ${follow.followTitle}
                                    </a>
                                    <div>
                                        ${follow.followDescription}
                                    </div>
                                </div>
                            </#list>
                        </#if>
                    </div>
                </div>
                <#if pjax>
                    <!---- pjax {#pjax} end ---->
                </#if>
        </div>
        <#include "footer.ftl">
    </body>

    </html>
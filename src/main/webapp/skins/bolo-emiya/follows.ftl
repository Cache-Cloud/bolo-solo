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
<#include "macro-page.ftl">
  <@sidePage htmlTitle="${followLabel} - ${blogTitle}" pageTitle="${followLabel}">
    <div class="rowRowLayout">
      <#list follows as follow>
        <a class="item" rel="friend" href="${servePath}/follow/articles/${follow.followTitle}" title="${follow.followDescription}" target="_blank">
          <span class="item__title">
            ${follow.followTitle}
          </span>
          <span class="item__desc">
            ${follow.followDescription}
          </span>
        </a>
      </#list>
    </div>
  </@sidePage>
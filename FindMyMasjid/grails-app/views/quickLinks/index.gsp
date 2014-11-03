
<%@ page import="org.findmymasjid.QuickLinks" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'quickLinks.label', default: 'QuickLinks')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-quickLinks" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-quickLinks" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="title" title="${message(code: 'quickLinks.title.label', default: 'Title')}" />
					
						<g:sortableColumn property="uriLink" title="${message(code: 'quickLinks.uriLink.label', default: 'Uri Link')}" />
					
						<g:sortableColumn property="score" title="${message(code: 'quickLinks.score.label', default: 'Score')}" />
					
						<g:sortableColumn property="shortDesc" title="${message(code: 'quickLinks.shortDesc.label', default: 'Short Desc')}" />
					
						<g:sortableColumn property="longDesc" title="${message(code: 'quickLinks.longDesc.label', default: 'Long Desc')}" />
					
						<g:sortableColumn property="activeFromDate" title="${message(code: 'quickLinks.activeFromDate.label', default: 'Active From Date')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${quickLinksInstanceList}" status="i" var="quickLinksInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${quickLinksInstance.id}">${fieldValue(bean: quickLinksInstance, field: "title")}</g:link></td>
					
						<td>${fieldValue(bean: quickLinksInstance, field: "uriLink")}</td>
					
						<td>${fieldValue(bean: quickLinksInstance, field: "score")}</td>
					
						<td>${fieldValue(bean: quickLinksInstance, field: "shortDesc")}</td>
					
						<td>${fieldValue(bean: quickLinksInstance, field: "longDesc")}</td>
					
						<td><g:formatDate date="${quickLinksInstance.activeFromDate}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${quickLinksInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>

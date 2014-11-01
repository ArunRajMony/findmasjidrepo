
<%@ page import="org.findmymasjid.MasjidDetails" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'masjidDetails.label', default: 'MasjidDetails')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-masjidDetails" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-masjidDetails" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="masjidName" title="${message(code: 'masjidDetails.masjidName.label', default: 'Masjid Name')}" />
					
						<g:sortableColumn property="addressLine1" title="${message(code: 'masjidDetails.addressLine1.label', default: 'Address Line1')}" />
					
						<g:sortableColumn property="addressLine2" title="${message(code: 'masjidDetails.addressLine2.label', default: 'Address Line2')}" />
					
						<g:sortableColumn property="cityTown" title="${message(code: 'masjidDetails.cityTown.label', default: 'City Town')}" />
					
						<g:sortableColumn property="district" title="${message(code: 'masjidDetails.district.label', default: 'District')}" />
					
						<g:sortableColumn property="pincode" title="${message(code: 'masjidDetails.pincode.label', default: 'Pincode')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${masjidDetailsInstanceList}" status="i" var="masjidDetailsInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${masjidDetailsInstance.id}">${fieldValue(bean: masjidDetailsInstance, field: "masjidName")}</g:link></td>
					
						<td>${fieldValue(bean: masjidDetailsInstance, field: "addressLine1")}</td>
					
						<td>${fieldValue(bean: masjidDetailsInstance, field: "addressLine2")}</td>
					
						<td>${fieldValue(bean: masjidDetailsInstance, field: "cityTown")}</td>
					
						<td>${fieldValue(bean: masjidDetailsInstance, field: "district")}</td>
					
						<td>${fieldValue(bean: masjidDetailsInstance, field: "pincode")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${masjidDetailsInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>

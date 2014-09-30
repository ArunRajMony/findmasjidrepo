
<%@ page import="findmymasjid.MasjidMaster" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'masjidMaster.label', default: 'MasjidMaster')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-masjidMaster" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-masjidMaster" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="masjidName" title="${message(code: 'masjidMaster.masjidName.label', default: 'Masjid Name')}" />
					
						<g:sortableColumn property="addressLine1" title="${message(code: 'masjidMaster.addressLine1.label', default: 'Address Line1')}" />
					
						<g:sortableColumn property="addressLine2" title="${message(code: 'masjidMaster.addressLine2.label', default: 'Address Line2')}" />
					
						<g:sortableColumn property="cityTown" title="${message(code: 'masjidMaster.cityTown.label', default: 'City Town')}" />
					
						<g:sortableColumn property="district" title="${message(code: 'masjidMaster.district.label', default: 'District')}" />
					
						<g:sortableColumn property="pincode" title="${message(code: 'masjidMaster.pincode.label', default: 'Pincode')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${masjidMasterInstanceList}" status="i" var="masjidMasterInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${masjidMasterInstance.id}">${fieldValue(bean: masjidMasterInstance, field: "masjidName")}</g:link></td>
					
						<td>${fieldValue(bean: masjidMasterInstance, field: "addressLine1")}</td>
					
						<td>${fieldValue(bean: masjidMasterInstance, field: "addressLine2")}</td>
					
						<td>${fieldValue(bean: masjidMasterInstance, field: "cityTown")}</td>
					
						<td>${fieldValue(bean: masjidMasterInstance, field: "district")}</td>
					
						<td>${fieldValue(bean: masjidMasterInstance, field: "pincode")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${masjidMasterInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>


<%@ page import="org.findmymasjid.EventDetails" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'eventDetails.label', default: 'EventDetails')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-eventDetails" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-eventDetails" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="eventName" title="${message(code: 'eventDetails.eventName.label', default: 'Event Name')}" />
					
						<g:sortableColumn property="organizerName" title="${message(code: 'eventDetails.organizerName.label', default: 'Organizer Name')}" />
					
						<g:sortableColumn property="eventDate" title="${message(code: 'eventDetails.eventDate.label', default: 'Event Date')}" />
					
						<g:sortableColumn property="eventDateHijriCalendar" title="${message(code: 'eventDetails.eventDateHijriCalendar.label', default: 'Event Date Hijri Calendar')}" />
					
						<g:sortableColumn property="city" title="${message(code: 'eventDetails.city.label', default: 'City')}" />
					
						<g:sortableColumn property="subLocality" title="${message(code: 'eventDetails.subLocality.label', default: 'Sub Locality')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${eventDetailsInstanceList}" status="i" var="eventDetailsInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${eventDetailsInstance.id}">${fieldValue(bean: eventDetailsInstance, field: "eventName")}</g:link></td>
					
						<td>${fieldValue(bean: eventDetailsInstance, field: "organizerName")}</td>
					
						<td><g:formatDate date="${eventDetailsInstance.eventDate}" formatName="app.date.format.notime"/></td>
					
						<td>${fieldValue(bean: eventDetailsInstance, field: "eventDateHijriCalendar")}</td>
					
						<td>${fieldValue(bean: eventDetailsInstance, field: "city")}</td>
					
						<td>${fieldValue(bean: eventDetailsInstance, field: "subLocality")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${eventDetailsInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>

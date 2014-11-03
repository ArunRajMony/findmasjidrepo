
<%@ page import="org.findmymasjid.EventDetails" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'eventDetails.label', default: 'EventDetails')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-eventDetails" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-eventDetails" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list eventDetails">
			
				<g:if test="${eventDetailsInstance?.eventName}">
				<li class="fieldcontain">
					<span id="eventName-label" class="property-label"><g:message code="eventDetails.eventName.label" default="Event Name" /></span>
					
						<span class="property-value" aria-labelledby="eventName-label"><g:fieldValue bean="${eventDetailsInstance}" field="eventName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventDetailsInstance?.organizerName}">
				<li class="fieldcontain">
					<span id="organizerName-label" class="property-label"><g:message code="eventDetails.organizerName.label" default="Organizer Name" /></span>
					
						<span class="property-value" aria-labelledby="organizerName-label"><g:fieldValue bean="${eventDetailsInstance}" field="organizerName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventDetailsInstance?.eventDate}">
				<li class="fieldcontain">
					<span id="eventDate-label" class="property-label"><g:message code="eventDetails.eventDate.label" default="Event Date" /></span>
					
						<span class="property-value" aria-labelledby="eventDate-label"><g:formatDate date="${eventDetailsInstance?.eventDate}" formatName="app.date.format.notime"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventDetailsInstance?.eventDateHijriCalendar}">
				<li class="fieldcontain">
					<span id="eventDateHijriCalendar-label" class="property-label"><g:message code="eventDetails.eventDateHijriCalendar.label" default="Event Date Hijri Calendar" /></span>
					
						<span class="property-value" aria-labelledby="eventDateHijriCalendar-label"><g:fieldValue bean="${eventDetailsInstance}" field="eventDateHijriCalendar"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventDetailsInstance?.eventStartTime}">
				<li class="fieldcontain">
					<span id="eventStartTime-label" class="property-label"><g:message code="eventDetails.eventStartTime.label" default="Event Start Time" /></span>
					
						<span class="property-value" aria-labelledby="eventStartTimeHour-label"><g:fieldValue bean="${eventDetailsInstance}" field="eventStartTime.hour"/>
						<b> : </b><g:fieldValue bean="${eventDetailsInstance}" field="eventStartTime.minutes"/>
						<g:fieldValue bean="${eventDetailsInstance}" field="eventStartTime.ampm"/></span>
					
				</li>
				</g:if>

				<g:if test="${eventDetailsInstance?.eventEndTime}">
				<li class="fieldcontain">
					<span id="eventEndTime-label" class="property-label"><g:message code="eventDetails.eventEndTime.label" default="Event End Time" /></span>
					
						<span class="property-value" aria-labelledby="eventEndTimeHour-label"><g:fieldValue bean="${eventDetailsInstance}" field="eventEndTime.hour"/>
						<b> : </b><g:fieldValue bean="${eventDetailsInstance}" field="eventEndTime.minutes"/>
						<g:fieldValue bean="${eventDetailsInstance}" field="eventEndTime.ampm"/></span>
					
				</li>
				</g:if>

			
				<g:if test="${eventDetailsInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="eventDetails.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${eventDetailsInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventDetailsInstance?.subLocality}">
				<li class="fieldcontain">
					<span id="subLocality-label" class="property-label"><g:message code="eventDetails.subLocality.label" default="Sub Locality" /></span>
					
						<span class="property-value" aria-labelledby="subLocality-label"><g:fieldValue bean="${eventDetailsInstance}" field="subLocality"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventDetailsInstance?.addressOne}">
				<li class="fieldcontain">
					<span id="addressOne-label" class="property-label"><g:message code="eventDetails.addressOne.label" default="Address One" /></span>
					
						<span class="property-value" aria-labelledby="addressOne-label"><g:fieldValue bean="${eventDetailsInstance}" field="addressOne"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventDetailsInstance?.addressTwo}">
				<li class="fieldcontain">
					<span id="addressTwo-label" class="property-label"><g:message code="eventDetails.addressTwo.label" default="Address Two" /></span>
					
						<span class="property-value" aria-labelledby="addressTwo-label"><g:fieldValue bean="${eventDetailsInstance}" field="addressTwo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventDetailsInstance?.pinCode}">
				<li class="fieldcontain">
					<span id="pinCode-label" class="property-label"><g:message code="eventDetails.pinCode.label" default="Pin Code" /></span>
					
						<span class="property-value" aria-labelledby="pinCode-label"><g:fieldValue bean="${eventDetailsInstance}" field="pinCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventDetailsInstance?.additionalDetails}">
				<li class="fieldcontain">
					<span id="additionalDetails-label" class="property-label"><g:message code="eventDetails.additionalDetails.label" default="Additional Details" /></span>
					
						<span class="property-value" aria-labelledby="additionalDetails-label"><g:fieldValue bean="${eventDetailsInstance}" field="additionalDetails"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:eventDetailsInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${eventDetailsInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

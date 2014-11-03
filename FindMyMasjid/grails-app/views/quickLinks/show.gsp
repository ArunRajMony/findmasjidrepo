
<%@ page import="org.findmymasjid.QuickLinks" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'quickLinks.label', default: 'QuickLinks')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-quickLinks" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-quickLinks" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list quickLinks">
			
				<g:if test="${quickLinksInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="quickLinks.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${quickLinksInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${quickLinksInstance?.uriLink}">
				<li class="fieldcontain">
					<span id="uriLink-label" class="property-label"><g:message code="quickLinks.uriLink.label" default="Uri Link" /></span>
					
						<span class="property-value" aria-labelledby="uriLink-label"><g:fieldValue bean="${quickLinksInstance}" field="uriLink"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${quickLinksInstance?.score}">
				<li class="fieldcontain">
					<span id="score-label" class="property-label"><g:message code="quickLinks.score.label" default="Score" /></span>
					
						<span class="property-value" aria-labelledby="score-label"><g:fieldValue bean="${quickLinksInstance}" field="score"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${quickLinksInstance?.shortDesc}">
				<li class="fieldcontain">
					<span id="shortDesc-label" class="property-label"><g:message code="quickLinks.shortDesc.label" default="Short Desc" /></span>
					
						<span class="property-value" aria-labelledby="shortDesc-label"><g:fieldValue bean="${quickLinksInstance}" field="shortDesc"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${quickLinksInstance?.longDesc}">
				<li class="fieldcontain">
					<span id="longDesc-label" class="property-label"><g:message code="quickLinks.longDesc.label" default="Long Desc" /></span>
					
						<span class="property-value" aria-labelledby="longDesc-label"><g:fieldValue bean="${quickLinksInstance}" field="longDesc"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${quickLinksInstance?.activeFromDate}">
				<li class="fieldcontain">
					<span id="activeFromDate-label" class="property-label"><g:message code="quickLinks.activeFromDate.label" default="Active From Date" /></span>
					
						<span class="property-value" aria-labelledby="activeFromDate-label"><g:formatDate date="${quickLinksInstance?.activeFromDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${quickLinksInstance?.expiryDate}">
				<li class="fieldcontain">
					<span id="expiryDate-label" class="property-label"><g:message code="quickLinks.expiryDate.label" default="Expiry Date" /></span>
					
						<span class="property-value" aria-labelledby="expiryDate-label"><g:formatDate date="${quickLinksInstance?.expiryDate}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:quickLinksInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${quickLinksInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

<%@ page import="org.findmymasjid.QuickLinks" %>



<div class="fieldcontain ${hasErrors(bean: quickLinksInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="quickLinks.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${quickLinksInstance?.title}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: quickLinksInstance, field: 'uriLink', 'error')} required">
	<label for="uriLink">
		<g:message code="quickLinks.uriLink.label" default="Uri Link" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="url" name="uriLink" required="" value="${quickLinksInstance?.uriLink}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: quickLinksInstance, field: 'score', 'error')} required">
	<label for="score">
		<g:message code="quickLinks.score.label" default="Score" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="score" from="${1..10}" class="range" required="" value="${fieldValue(bean: quickLinksInstance, field: 'score')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: quickLinksInstance, field: 'shortDesc', 'error')} ">
	<label for="shortDesc">
		<g:message code="quickLinks.shortDesc.label" default="Short Desc" />
		
	</label>
	<g:textField name="shortDesc" value="${quickLinksInstance?.shortDesc}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: quickLinksInstance, field: 'longDesc', 'error')} ">
	<label for="longDesc">
		<g:message code="quickLinks.longDesc.label" default="Long Desc" />
		
	</label>
	<g:textArea name="longDesc" cols="40" rows="5" value="${quickLinksInstance?.longDesc}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: quickLinksInstance, field: 'activeFromDate', 'error')} required">
	<label for="activeFromDate">
		<g:message code="quickLinks.activeFromDate.label" default="Active From Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="activeFromDate" precision="day"  relativeYears= "${0..1}" value="${quickLinksInstance?.activeFromDate}"   />

</div>

<div class="fieldcontain ${hasErrors(bean: quickLinksInstance, field: 'expiryDate', 'error')} required">
	<label for="expiryDate">
		<g:message code="quickLinks.expiryDate.label" default="Expiry Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="expiryDate" precision="day" relativeYears= "${0..5}" value="${quickLinksInstance?.expiryDate}"  />

</div>


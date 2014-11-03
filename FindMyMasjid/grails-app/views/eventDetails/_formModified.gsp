<%@ page import="org.findmymasjid.EventDetails" %>
<%@ page import="org.findmymasjid.OnlyTime" %>



<div class="fieldcontain ${hasErrors(bean: eventDetailsInstance, field: 'eventName', 'error')} required">
	<label for="eventName">
		<g:message code="eventDetails.eventName.label" default="Event Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="eventName" required="" value="${eventDetailsInstance?.eventName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: eventDetailsInstance, field: 'organizerName', 'error')} required">
	<label for="organizerName">
		<g:message code="eventDetails.organizerName.label" default="Organizer Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="organizerName" required="" value="${eventDetailsInstance?.organizerName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: eventDetailsInstance, field: 'eventDate', 'error')} required">
	<label for="eventDate">
		<g:message code="eventDetails.eventDate.label" default="Event Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="eventDate" precision="day"  relativeYears= "${0..2}" value="${eventDetailsInstance?.eventDate}"  />

</div>


<div class="fieldcontain ${hasErrors(bean: eventDetailsInstance, field: 'eventDetailsInstance.eventStartTime', 'error')} required">
	<label for="eventStartTime">
		<g:message code="eventDetails.eventStartTime.label" default="Event Start Time" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="eventStartTime.hour" from="${eventDetailsInstance.eventStartTime.constraints.hour.inList}"  required="" value="${fieldValue(bean: eventDetailsInstance, field: 'eventStartTime.hour')}"/>
	<b>:</b> 
	<g:select name="eventStartTime.minutes" from="${eventDetailsInstance.eventStartTime.constraints.minutes.inList}" required="" value="${fieldValue(bean: eventDetailsInstance, field: 'eventStartTime.minutes')}" />
	<g:select name="eventStartTime.ampm" from="${eventDetailsInstance.eventStartTime.constraints.ampm.inList}" required="" value="${fieldValue(bean: eventDetailsInstance, field: 'eventStartTime.ampm')}" />
	

</div>



<div class="fieldcontain ${hasErrors(bean: eventDetailsInstance, field: 'eventDetailsInstance.eventEndTime', 'error')} required">
	<label for="eventEndTime">
		<g:message code="eventDetails.eventEndTime.label" default="Event End Time" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="eventEndTime.hour" from="${eventDetailsInstance.eventEndTime.constraints.hour.inList}"  required="" value="${fieldValue(bean: eventDetailsInstance, field: 'eventEndTime.hour')}"/>
	<b>:</b> 
	<g:select name="eventEndTime.minutes" from="${eventDetailsInstance.eventEndTime.constraints.minutes.inList}" required="" value="${fieldValue(bean: eventDetailsInstance, field: 'eventEndTime.minutes')}" />
	<g:select name="eventEndTime.ampm" from="${eventDetailsInstance.eventEndTime.constraints.ampm.inList}" required="" value="${fieldValue(bean: eventDetailsInstance, field: 'eventEndTime.ampm')}" />
	

</div>




<div class="fieldcontain ${hasErrors(bean: eventDetailsInstance, field: 'city', 'error')} required">
	<label for="city">
		<g:message code="eventDetails.city.label" default="City" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="city" required="" value="${eventDetailsInstance?.city}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: eventDetailsInstance, field: 'subLocality', 'error')} required">
	<label for="subLocality">
		<g:message code="eventDetails.subLocality.label" default="Sub Locality" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="subLocality" required="" value="${eventDetailsInstance?.subLocality}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: eventDetailsInstance, field: 'addressOne', 'error')} required">
	<label for="addressOne">
		<g:message code="eventDetails.addressOne.label" default="Address One" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="addressOne" required="" value="${eventDetailsInstance?.addressOne}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: eventDetailsInstance, field: 'addressTwo', 'error')} ">
	<label for="addressTwo">
		<g:message code="eventDetails.addressTwo.label" default="Address Two" />
		
	</label>
	<g:textField name="addressTwo" value="${eventDetailsInstance?.addressTwo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: eventDetailsInstance, field: 'pinCode', 'error')} required">
	<label for="pinCode">
		<g:message code="eventDetails.pinCode.label" default="Pin Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="pinCode" required="" value="${eventDetailsInstance?.pinCode}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: eventDetailsInstance, field: 'additionalDetails', 'error')} ">
	<label for="additionalDetails">
		<g:message code="eventDetails.additionalDetails.label" default="Additional Details" />
		
	</label>
	<g:textArea name="additionalDetails" cols="40" rows="5" value="${eventDetailsInstance?.additionalDetails}"/>

</div>




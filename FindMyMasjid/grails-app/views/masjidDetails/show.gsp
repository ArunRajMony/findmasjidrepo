
<%@ page import="org.findmymasjid.MasjidDetails" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'masjidDetails.label', default: 'MasjidDetails')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-masjidDetails" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-masjidDetails" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list masjidDetails">
			
				<g:if test="${masjidDetailsInstance?.masjidName}">
				<li class="fieldcontain">
					<span id="masjidName-label" class="property-label"><g:message code="masjidDetails.masjidName.label" default="Masjid Name" /></span>
					
						<span class="property-value" aria-labelledby="masjidName-label"><g:fieldValue bean="${masjidDetailsInstance}" field="masjidName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.addressLine1}">
				<li class="fieldcontain">
					<span id="addressLine1-label" class="property-label"><g:message code="masjidDetails.addressLine1.label" default="Address Line1" /></span>
					
						<span class="property-value" aria-labelledby="addressLine1-label"><g:fieldValue bean="${masjidDetailsInstance}" field="addressLine1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.addressLine2}">
				<li class="fieldcontain">
					<span id="addressLine2-label" class="property-label"><g:message code="masjidDetails.addressLine2.label" default="Address Line2" /></span>
					
						<span class="property-value" aria-labelledby="addressLine2-label"><g:fieldValue bean="${masjidDetailsInstance}" field="addressLine2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.cityTown}">
				<li class="fieldcontain">
					<span id="cityTown-label" class="property-label"><g:message code="masjidDetails.cityTown.label" default="City Town" /></span>
					
						<span class="property-value" aria-labelledby="cityTown-label"><g:fieldValue bean="${masjidDetailsInstance}" field="cityTown"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.district}">
				<li class="fieldcontain">
					<span id="district-label" class="property-label"><g:message code="masjidDetails.district.label" default="District" /></span>
					
						<span class="property-value" aria-labelledby="district-label"><g:fieldValue bean="${masjidDetailsInstance}" field="district"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.pincode}">
				<li class="fieldcontain">
					<span id="pincode-label" class="property-label"><g:message code="masjidDetails.pincode.label" default="Pincode" /></span>
					
						<span class="property-value" aria-labelledby="pincode-label"><g:fieldValue bean="${masjidDetailsInstance}" field="pincode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.state}">
				<li class="fieldcontain">
					<span id="state-label" class="property-label"><g:message code="masjidDetails.state.label" default="State" /></span>
					
						<span class="property-value" aria-labelledby="state-label"><g:fieldValue bean="${masjidDetailsInstance}" field="state"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.country}">
				<li class="fieldcontain">
					<span id="country-label" class="property-label"><g:message code="masjidDetails.country.label" default="Country" /></span>
					
						<span class="property-value" aria-labelledby="country-label"><g:fieldValue bean="${masjidDetailsInstance}" field="country"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.latitude}">
				<li class="fieldcontain">
					<span id="latitude-label" class="property-label"><g:message code="masjidDetails.latitude.label" default="Latitude" /></span>
					
						<span class="property-value" aria-labelledby="latitude-label"><g:fieldValue bean="${masjidDetailsInstance}" field="latitude"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.longitude}">
				<li class="fieldcontain">
					<span id="longitude-label" class="property-label"><g:message code="masjidDetails.longitude.label" default="Longitude" /></span>
					
						<span class="property-value" aria-labelledby="longitude-label"><g:fieldValue bean="${masjidDetailsInstance}" field="longitude"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.googleLocationLink}">
				<li class="fieldcontain">
					<span id="googleLocationLink-label" class="property-label"><g:message code="masjidDetails.googleLocationLink.label" default="Google Location Link" /></span>
					
						<span class="property-value" aria-labelledby="googleLocationLink-label"><g:fieldValue bean="${masjidDetailsInstance}" field="googleLocationLink"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.phone1}">
				<li class="fieldcontain">
					<span id="phone1-label" class="property-label"><g:message code="masjidDetails.phone1.label" default="Phone1" /></span>
					
						<span class="property-value" aria-labelledby="phone1-label"><g:fieldValue bean="${masjidDetailsInstance}" field="phone1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.phone2}">
				<li class="fieldcontain">
					<span id="phone2-label" class="property-label"><g:message code="masjidDetails.phone2.label" default="Phone2" /></span>
					
						<span class="property-value" aria-labelledby="phone2-label"><g:fieldValue bean="${masjidDetailsInstance}" field="phone2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.numberOfFloors}">
				<li class="fieldcontain">
					<span id="numberOfFloors-label" class="property-label"><g:message code="masjidDetails.numberOfFloors.label" default="Number Of Floors" /></span>
					
						<span class="property-value" aria-labelledby="numberOfFloors-label"><g:fieldValue bean="${masjidDetailsInstance}" field="numberOfFloors"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.canAccomodate}">
				<li class="fieldcontain">
					<span id="canAccomodate-label" class="property-label"><g:message code="masjidDetails.canAccomodate.label" default="Can Accomodate" /></span>
					
						<span class="property-value" aria-labelledby="canAccomodate-label"><g:fieldValue bean="${masjidDetailsInstance}" field="canAccomodate"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.twoWheelerParkingAvailable}">
				<li class="fieldcontain">
					<span id="twoWheelerParkingAvailable-label" class="property-label"><g:message code="masjidDetails.twoWheelerParkingAvailable.label" default="Two Wheeler Parking Available" /></span>
					
						<span class="property-value" aria-labelledby="twoWheelerParkingAvailable-label"><g:fieldValue bean="${masjidDetailsInstance}" field="twoWheelerParkingAvailable"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.numberOfTwoWheelerParking}">
				<li class="fieldcontain">
					<span id="numberOfTwoWheelerParking-label" class="property-label"><g:message code="masjidDetails.numberOfTwoWheelerParking.label" default="Number Of Two Wheeler Parking" /></span>
					
						<span class="property-value" aria-labelledby="numberOfTwoWheelerParking-label"><g:fieldValue bean="${masjidDetailsInstance}" field="numberOfTwoWheelerParking"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.fourWheelerParkingAvailable}">
				<li class="fieldcontain">
					<span id="fourWheelerParkingAvailable-label" class="property-label"><g:message code="masjidDetails.fourWheelerParkingAvailable.label" default="Four Wheeler Parking Available" /></span>
					
						<span class="property-value" aria-labelledby="fourWheelerParkingAvailable-label"><g:fieldValue bean="${masjidDetailsInstance}" field="fourWheelerParkingAvailable"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.numberOfFourWheelerParking}">
				<li class="fieldcontain">
					<span id="numberOfFourWheelerParking-label" class="property-label"><g:message code="masjidDetails.numberOfFourWheelerParking.label" default="Number Of Four Wheeler Parking" /></span>
					
						<span class="property-value" aria-labelledby="numberOfFourWheelerParking-label"><g:fieldValue bean="${masjidDetailsInstance}" field="numberOfFourWheelerParking"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.masjidType}">
				<li class="fieldcontain">
					<span id="masjidType-label" class="property-label"><g:message code="masjidDetails.masjidType.label" default="Masjid Type" /></span>
					
						<span class="property-value" aria-labelledby="masjidType-label"><g:fieldValue bean="${masjidDetailsInstance}" field="masjidType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.languageOfPrayer}">
				<li class="fieldcontain">
					<span id="languageOfPrayer-label" class="property-label"><g:message code="masjidDetails.languageOfPrayer.label" default="Language Of Prayer" /></span>
					
						<span class="property-value" aria-labelledby="languageOfPrayer-label"><g:fieldValue bean="${masjidDetailsInstance}" field="languageOfPrayer"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.prayerTimings1}">
				<li class="fieldcontain">
					<span id="prayerTimings1-label" class="property-label"><g:message code="masjidDetails.prayerTimings1.label" default="Prayer Timings1" /></span>
					
						<span class="property-value" aria-labelledby="prayerTimings1-label"><g:formatDate date="${masjidDetailsInstance?.prayerTimings1}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.prayerTimings2}">
				<li class="fieldcontain">
					<span id="prayerTimings2-label" class="property-label"><g:message code="masjidDetails.prayerTimings2.label" default="Prayer Timings2" /></span>
					
						<span class="property-value" aria-labelledby="prayerTimings2-label"><g:formatDate date="${masjidDetailsInstance?.prayerTimings2}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.prayerTimings3}">
				<li class="fieldcontain">
					<span id="prayerTimings3-label" class="property-label"><g:message code="masjidDetails.prayerTimings3.label" default="Prayer Timings3" /></span>
					
						<span class="property-value" aria-labelledby="prayerTimings3-label"><g:formatDate date="${masjidDetailsInstance?.prayerTimings3}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.prayerTimings4}">
				<li class="fieldcontain">
					<span id="prayerTimings4-label" class="property-label"><g:message code="masjidDetails.prayerTimings4.label" default="Prayer Timings4" /></span>
					
						<span class="property-value" aria-labelledby="prayerTimings4-label"><g:formatDate date="${masjidDetailsInstance?.prayerTimings4}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.prayerTimings5}">
				<li class="fieldcontain">
					<span id="prayerTimings5-label" class="property-label"><g:message code="masjidDetails.prayerTimings5.label" default="Prayer Timings5" /></span>
					
						<span class="property-value" aria-labelledby="prayerTimings5-label"><g:formatDate date="${masjidDetailsInstance?.prayerTimings5}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.prayerTimings6}">
				<li class="fieldcontain">
					<span id="prayerTimings6-label" class="property-label"><g:message code="masjidDetails.prayerTimings6.label" default="Prayer Timings6" /></span>
					
						<span class="property-value" aria-labelledby="prayerTimings6-label"><g:formatDate date="${masjidDetailsInstance?.prayerTimings6}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.prayerTimingsFridayNoon}">
				<li class="fieldcontain">
					<span id="prayerTimingsFridayNoon-label" class="property-label"><g:message code="masjidDetails.prayerTimingsFridayNoon.label" default="Prayer Timings Friday Noon" /></span>
					
						<span class="property-value" aria-labelledby="prayerTimingsFridayNoon-label"><g:formatDate date="${masjidDetailsInstance?.prayerTimingsFridayNoon}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.jummahTime}">
				<li class="fieldcontain">
					<span id="jummahTime-label" class="property-label"><g:message code="masjidDetails.jummahTime.label" default="Jummah Time" /></span>
					
						<span class="property-value" aria-labelledby="jummahTime-label"><g:formatDate date="${masjidDetailsInstance?.jummahTime}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.contactPersonName}">
				<li class="fieldcontain">
					<span id="contactPersonName-label" class="property-label"><g:message code="masjidDetails.contactPersonName.label" default="Contact Person Name" /></span>
					
						<span class="property-value" aria-labelledby="contactPersonName-label"><g:fieldValue bean="${masjidDetailsInstance}" field="contactPersonName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.contactPersonTelNumber}">
				<li class="fieldcontain">
					<span id="contactPersonTelNumber-label" class="property-label"><g:message code="masjidDetails.contactPersonTelNumber.label" default="Contact Person Tel Number" /></span>
					
						<span class="property-value" aria-labelledby="contactPersonTelNumber-label"><g:fieldValue bean="${masjidDetailsInstance}" field="contactPersonTelNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.contactPersonEmail}">
				<li class="fieldcontain">
					<span id="contactPersonEmail-label" class="property-label"><g:message code="masjidDetails.contactPersonEmail.label" default="Contact Person Email" /></span>
					
						<span class="property-value" aria-labelledby="contactPersonEmail-label"><g:fieldValue bean="${masjidDetailsInstance}" field="contactPersonEmail"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.busStopName}">
				<li class="fieldcontain">
					<span id="busStopName-label" class="property-label"><g:message code="masjidDetails.busStopName.label" default="Bus Stop Name" /></span>
					
						<span class="property-value" aria-labelledby="busStopName-label"><g:fieldValue bean="${masjidDetailsInstance}" field="busStopName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.nearestRailwayStation}">
				<li class="fieldcontain">
					<span id="nearestRailwayStation-label" class="property-label"><g:message code="masjidDetails.nearestRailwayStation.label" default="Nearest Railway Station" /></span>
					
						<span class="property-value" aria-labelledby="nearestRailwayStation-label"><g:fieldValue bean="${masjidDetailsInstance}" field="nearestRailwayStation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.landmark}">
				<li class="fieldcontain">
					<span id="landmark-label" class="property-label"><g:message code="masjidDetails.landmark.label" default="Landmark" /></span>
					
						<span class="property-value" aria-labelledby="landmark-label"><g:fieldValue bean="${masjidDetailsInstance}" field="landmark"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidDetailsInstance?.otherInfo}">
				<li class="fieldcontain">
					<span id="otherInfo-label" class="property-label"><g:message code="masjidDetails.otherInfo.label" default="Other Info" /></span>
					
						<span class="property-value" aria-labelledby="otherInfo-label"><g:fieldValue bean="${masjidDetailsInstance}" field="otherInfo"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:masjidDetailsInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${masjidDetailsInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

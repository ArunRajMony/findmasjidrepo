
<%@ page import="findmymasjid.MasjidMaster" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'masjidMaster.label', default: 'MasjidMaster')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-masjidMaster" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-masjidMaster" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list masjidMaster">
			
				<g:if test="${masjidMasterInstance?.masjidName}">
				<li class="fieldcontain">
					<span id="masjidName-label" class="property-label"><g:message code="masjidMaster.masjidName.label" default="Masjid Name" /></span>
					
						<span class="property-value" aria-labelledby="masjidName-label"><g:fieldValue bean="${masjidMasterInstance}" field="masjidName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidMasterInstance?.addressLine1}">
				<li class="fieldcontain">
					<span id="addressLine1-label" class="property-label"><g:message code="masjidMaster.addressLine1.label" default="Address Line1" /></span>
					
						<span class="property-value" aria-labelledby="addressLine1-label"><g:fieldValue bean="${masjidMasterInstance}" field="addressLine1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidMasterInstance?.addressLine2}">
				<li class="fieldcontain">
					<span id="addressLine2-label" class="property-label"><g:message code="masjidMaster.addressLine2.label" default="Address Line2" /></span>
					
						<span class="property-value" aria-labelledby="addressLine2-label"><g:fieldValue bean="${masjidMasterInstance}" field="addressLine2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidMasterInstance?.cityTown}">
				<li class="fieldcontain">
					<span id="cityTown-label" class="property-label"><g:message code="masjidMaster.cityTown.label" default="City Town" /></span>
					
						<span class="property-value" aria-labelledby="cityTown-label"><g:fieldValue bean="${masjidMasterInstance}" field="cityTown"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidMasterInstance?.district}">
				<li class="fieldcontain">
					<span id="district-label" class="property-label"><g:message code="masjidMaster.district.label" default="District" /></span>
					
						<span class="property-value" aria-labelledby="district-label"><g:fieldValue bean="${masjidMasterInstance}" field="district"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidMasterInstance?.pincode}">
				<li class="fieldcontain">
					<span id="pincode-label" class="property-label"><g:message code="masjidMaster.pincode.label" default="Pincode" /></span>
					
						<span class="property-value" aria-labelledby="pincode-label"><g:fieldValue bean="${masjidMasterInstance}" field="pincode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidMasterInstance?.state}">
				<li class="fieldcontain">
					<span id="state-label" class="property-label"><g:message code="masjidMaster.state.label" default="State" /></span>
					
						<span class="property-value" aria-labelledby="state-label"><g:fieldValue bean="${masjidMasterInstance}" field="state"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidMasterInstance?.country}">
				<li class="fieldcontain">
					<span id="country-label" class="property-label"><g:message code="masjidMaster.country.label" default="Country" /></span>
					
						<span class="property-value" aria-labelledby="country-label"><g:fieldValue bean="${masjidMasterInstance}" field="country"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidMasterInstance?.latitude}">
				<li class="fieldcontain">
					<span id="latitude-label" class="property-label"><g:message code="masjidMaster.latitude.label" default="Latitude" /></span>
					
						<span class="property-value" aria-labelledby="latitude-label"><g:fieldValue bean="${masjidMasterInstance}" field="latitude"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidMasterInstance?.longitude}">
				<li class="fieldcontain">
					<span id="longitude-label" class="property-label"><g:message code="masjidMaster.longitude.label" default="Longitude" /></span>
					
						<span class="property-value" aria-labelledby="longitude-label"><g:fieldValue bean="${masjidMasterInstance}" field="longitude"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidMasterInstance?.googleLocationLink}">
				<li class="fieldcontain">
					<span id="googleLocationLink-label" class="property-label"><g:message code="masjidMaster.googleLocationLink.label" default="Google Location Link" /></span>
					
						<span class="property-value" aria-labelledby="googleLocationLink-label"><g:fieldValue bean="${masjidMasterInstance}" field="googleLocationLink"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidMasterInstance?.phone1}">
				<li class="fieldcontain">
					<span id="phone1-label" class="property-label"><g:message code="masjidMaster.phone1.label" default="Phone1" /></span>
					
						<span class="property-value" aria-labelledby="phone1-label"><g:fieldValue bean="${masjidMasterInstance}" field="phone1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidMasterInstance?.phone2}">
				<li class="fieldcontain">
					<span id="phone2-label" class="property-label"><g:message code="masjidMaster.phone2.label" default="Phone2" /></span>
					
						<span class="property-value" aria-labelledby="phone2-label"><g:fieldValue bean="${masjidMasterInstance}" field="phone2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidMasterInstance?.numberOfFloors}">
				<li class="fieldcontain">
					<span id="numberOfFloors-label" class="property-label"><g:message code="masjidMaster.numberOfFloors.label" default="Number Of Floors" /></span>
					
						<span class="property-value" aria-labelledby="numberOfFloors-label"><g:fieldValue bean="${masjidMasterInstance}" field="numberOfFloors"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidMasterInstance?.canAccomodate}">
				<li class="fieldcontain">
					<span id="canAccomodate-label" class="property-label"><g:message code="masjidMaster.canAccomodate.label" default="Can Accomodate" /></span>
					
						<span class="property-value" aria-labelledby="canAccomodate-label"><g:fieldValue bean="${masjidMasterInstance}" field="canAccomodate"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidMasterInstance?.twoWheelerParkingAvailable}">
				<li class="fieldcontain">
					<span id="twoWheelerParkingAvailable-label" class="property-label"><g:message code="masjidMaster.twoWheelerParkingAvailable.label" default="Two Wheeler Parking Available" /></span>
					
						<span class="property-value" aria-labelledby="twoWheelerParkingAvailable-label"><g:fieldValue bean="${masjidMasterInstance}" field="twoWheelerParkingAvailable"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidMasterInstance?.numberOfTwoWheelerParking}">
				<li class="fieldcontain">
					<span id="numberOfTwoWheelerParking-label" class="property-label"><g:message code="masjidMaster.numberOfTwoWheelerParking.label" default="Number Of Two Wheeler Parking" /></span>
					
						<span class="property-value" aria-labelledby="numberOfTwoWheelerParking-label"><g:fieldValue bean="${masjidMasterInstance}" field="numberOfTwoWheelerParking"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidMasterInstance?.fourWheelerParkingAvailable}">
				<li class="fieldcontain">
					<span id="fourWheelerParkingAvailable-label" class="property-label"><g:message code="masjidMaster.fourWheelerParkingAvailable.label" default="Four Wheeler Parking Available" /></span>
					
						<span class="property-value" aria-labelledby="fourWheelerParkingAvailable-label"><g:fieldValue bean="${masjidMasterInstance}" field="fourWheelerParkingAvailable"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidMasterInstance?.numberOfFourWheelerParking}">
				<li class="fieldcontain">
					<span id="numberOfFourWheelerParking-label" class="property-label"><g:message code="masjidMaster.numberOfFourWheelerParking.label" default="Number Of Four Wheeler Parking" /></span>
					
						<span class="property-value" aria-labelledby="numberOfFourWheelerParking-label"><g:fieldValue bean="${masjidMasterInstance}" field="numberOfFourWheelerParking"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidMasterInstance?.masjidType}">
				<li class="fieldcontain">
					<span id="masjidType-label" class="property-label"><g:message code="masjidMaster.masjidType.label" default="Masjid Type" /></span>
					
						<span class="property-value" aria-labelledby="masjidType-label"><g:fieldValue bean="${masjidMasterInstance}" field="masjidType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidMasterInstance?.languageOfPrayer}">
				<li class="fieldcontain">
					<span id="languageOfPrayer-label" class="property-label"><g:message code="masjidMaster.languageOfPrayer.label" default="Language Of Prayer" /></span>
					
						<span class="property-value" aria-labelledby="languageOfPrayer-label"><g:fieldValue bean="${masjidMasterInstance}" field="languageOfPrayer"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidMasterInstance?.prayerTimings1}">
				<li class="fieldcontain">
					<span id="prayerTimings1-label" class="property-label"><g:message code="masjidMaster.prayerTimings1.label" default="Prayer Timings1" /></span>
					
						<span class="property-value" aria-labelledby="prayerTimings1-label"><g:formatDate date="${masjidMasterInstance?.prayerTimings1}" format="hh:mm a"  /></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidMasterInstance?.prayerTimings2}">
				<li class="fieldcontain">
					<span id="prayerTimings2-label" class="property-label"><g:message code="masjidMaster.prayerTimings2.label" default="Prayer Timings2" /></span>
					
						<span class="property-value" aria-labelledby="prayerTimings2-label"><g:formatDate date="${masjidMasterInstance?.prayerTimings2}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidMasterInstance?.prayerTimings3}">
				<li class="fieldcontain">
					<span id="prayerTimings3-label" class="property-label"><g:message code="masjidMaster.prayerTimings3.label" default="Prayer Timings3" /></span>
					
						<span class="property-value" aria-labelledby="prayerTimings3-label"><g:formatDate date="${masjidMasterInstance?.prayerTimings3}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidMasterInstance?.prayerTimings4}">
				<li class="fieldcontain">
					<span id="prayerTimings4-label" class="property-label"><g:message code="masjidMaster.prayerTimings4.label" default="Prayer Timings4" /></span>
					
						<span class="property-value" aria-labelledby="prayerTimings4-label"><g:formatDate date="${masjidMasterInstance?.prayerTimings4}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidMasterInstance?.prayerTimings5}">
				<li class="fieldcontain">
					<span id="prayerTimings5-label" class="property-label"><g:message code="masjidMaster.prayerTimings5.label" default="Prayer Timings5" /></span>
					
						<span class="property-value" aria-labelledby="prayerTimings5-label"><g:formatDate date="${masjidMasterInstance?.prayerTimings5}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidMasterInstance?.prayerTimings6}">
				<li class="fieldcontain">
					<span id="prayerTimings6-label" class="property-label"><g:message code="masjidMaster.prayerTimings6.label" default="Prayer Timings6" /></span>
					
						<span class="property-value" aria-labelledby="prayerTimings6-label"><g:formatDate date="${masjidMasterInstance?.prayerTimings6}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidMasterInstance?.prayerTimingsFridayNoon}">
				<li class="fieldcontain">
					<span id="prayerTimingsFridayNoon-label" class="property-label"><g:message code="masjidMaster.prayerTimingsFridayNoon.label" default="Prayer Timings Friday Noon" /></span>
					
						<span class="property-value" aria-labelledby="prayerTimingsFridayNoon-label"><g:formatDate date="${masjidMasterInstance?.prayerTimingsFridayNoon}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidMasterInstance?.jummahTime}">
				<li class="fieldcontain">
					<span id="jummahTime-label" class="property-label"><g:message code="masjidMaster.jummahTime.label" default="Jummah Time" /></span>
					
						<span class="property-value" aria-labelledby="jummahTime-label"><g:formatDate date="${masjidMasterInstance?.jummahTime}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidMasterInstance?.contactPersonName}">
				<li class="fieldcontain">
					<span id="contactPersonName-label" class="property-label"><g:message code="masjidMaster.contactPersonName.label" default="Contact Person Name" /></span>
					
						<span class="property-value" aria-labelledby="contactPersonName-label"><g:fieldValue bean="${masjidMasterInstance}" field="contactPersonName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidMasterInstance?.contactPersonTelNumber}">
				<li class="fieldcontain">
					<span id="contactPersonTelNumber-label" class="property-label"><g:message code="masjidMaster.contactPersonTelNumber.label" default="Contact Person Tel Number" /></span>
					
						<span class="property-value" aria-labelledby="contactPersonTelNumber-label"><g:fieldValue bean="${masjidMasterInstance}" field="contactPersonTelNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidMasterInstance?.contactPersonEmail}">
				<li class="fieldcontain">
					<span id="contactPersonEmail-label" class="property-label"><g:message code="masjidMaster.contactPersonEmail.label" default="Contact Person Email" /></span>
					
						<span class="property-value" aria-labelledby="contactPersonEmail-label"><g:fieldValue bean="${masjidMasterInstance}" field="contactPersonEmail"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidMasterInstance?.busStopName}">
				<li class="fieldcontain">
					<span id="busStopName-label" class="property-label"><g:message code="masjidMaster.busStopName.label" default="Bus Stop Name" /></span>
					
						<span class="property-value" aria-labelledby="busStopName-label"><g:fieldValue bean="${masjidMasterInstance}" field="busStopName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidMasterInstance?.nearestRailwayStation}">
				<li class="fieldcontain">
					<span id="nearestRailwayStation-label" class="property-label"><g:message code="masjidMaster.nearestRailwayStation.label" default="Nearest Railway Station" /></span>
					
						<span class="property-value" aria-labelledby="nearestRailwayStation-label"><g:fieldValue bean="${masjidMasterInstance}" field="nearestRailwayStation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidMasterInstance?.landmark}">
				<li class="fieldcontain">
					<span id="landmark-label" class="property-label"><g:message code="masjidMaster.landmark.label" default="Landmark" /></span>
					
						<span class="property-value" aria-labelledby="landmark-label"><g:fieldValue bean="${masjidMasterInstance}" field="landmark"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${masjidMasterInstance?.otherInfo}">
				<li class="fieldcontain">
					<span id="otherInfo-label" class="property-label"><g:message code="masjidMaster.otherInfo.label" default="Other Info" /></span>
					
						<span class="property-value" aria-labelledby="otherInfo-label"><g:fieldValue bean="${masjidMasterInstance}" field="otherInfo"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:masjidMasterInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${masjidMasterInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

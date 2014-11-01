<%@ page import="org.findmymasjid.MasjidDetails" %>



<div class="fieldcontain ${hasErrors(bean: masjidDetailsInstance, field: 'masjidName', 'error')} required">
	<label for="masjidName">
		<g:message code="masjidDetails.masjidName.label" default="Masjid Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="masjidName" required="" value="${masjidDetailsInstance?.masjidName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: masjidDetailsInstance, field: 'addressLine1', 'error')} required">
	<label for="addressLine1">
		<g:message code="masjidDetails.addressLine1.label" default="Address Line1" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="addressLine1" required="" value="${masjidDetailsInstance?.addressLine1}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: masjidDetailsInstance, field: 'addressLine2', 'error')} required">
	<label for="addressLine2">
		<g:message code="masjidDetails.addressLine2.label" default="Address Line2" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="addressLine2" required="" value="${masjidDetailsInstance?.addressLine2}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: masjidDetailsInstance, field: 'cityTown', 'error')} required">
	<label for="cityTown">
		<g:message code="masjidDetails.cityTown.label" default="City Town" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cityTown" required="" value="${masjidDetailsInstance?.cityTown}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: masjidDetailsInstance, field: 'district', 'error')} required">
	<label for="district">
		<g:message code="masjidDetails.district.label" default="District" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="district" required="" value="${masjidDetailsInstance?.district}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: masjidDetailsInstance, field: 'pincode', 'error')} required">
	<label for="pincode">
		<g:message code="masjidDetails.pincode.label" default="Pincode" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="pincode" maxlength="6" pattern="${masjidDetailsInstance.constraints.pincode.matches}" required="" value="${masjidDetailsInstance?.pincode}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: masjidDetailsInstance, field: 'state', 'error')} required">
	<label for="state">
		<g:message code="masjidDetails.state.label" default="State" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="state" from="${masjidDetailsInstance.constraints.state.inList}" required="" value="${masjidDetailsInstance?.state}" valueMessagePrefix="masjidDetails.state"/>

</div>

<div class="fieldcontain ${hasErrors(bean: masjidDetailsInstance, field: 'country', 'error')} required">
	<label for="country">
		<g:message code="masjidDetails.country.label" default="Country" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="country" from="${masjidDetailsInstance.constraints.country.inList}" required="" value="${masjidDetailsInstance?.country}" valueMessagePrefix="masjidDetails.country"/>

</div>

<div class="fieldcontain ${hasErrors(bean: masjidDetailsInstance, field: 'latitude', 'error')} ">
	<label for="latitude">
		<g:message code="masjidDetails.latitude.label" default="Latitude" />
		
	</label>
	<g:textField name="latitude" pattern="${masjidDetailsInstance.constraints.latitude.matches}" value="${masjidDetailsInstance?.latitude}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: masjidDetailsInstance, field: 'longitude', 'error')} ">
	<label for="longitude">
		<g:message code="masjidDetails.longitude.label" default="Longitude" />
		
	</label>
	<g:textField name="longitude" pattern="${masjidDetailsInstance.constraints.longitude.matches}" value="${masjidDetailsInstance?.longitude}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: masjidDetailsInstance, field: 'googleLocationLink', 'error')} required">
	<label for="googleLocationLink">
		<g:message code="masjidDetails.googleLocationLink.label" default="Google Location Link" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="googleLocationLink" cols="40" rows="5" required="" value="${masjidDetailsInstance?.googleLocationLink}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: masjidDetailsInstance, field: 'phone1', 'error')} required">
	<label for="phone1">
		<g:message code="masjidDetails.phone1.label" default="Phone1" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="phone1" maxlength="14" pattern="${masjidDetailsInstance.constraints.phone1.matches}" required="" value="${masjidDetailsInstance?.phone1}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: masjidDetailsInstance, field: 'phone2', 'error')} ">
	<label for="phone2">
		<g:message code="masjidDetails.phone2.label" default="Phone2" />
		
	</label>
	<g:textField name="phone2" maxlength="14" pattern="${masjidDetailsInstance.constraints.phone2.matches}" value="${masjidDetailsInstance?.phone2}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: masjidDetailsInstance, field: 'numberOfFloors', 'error')} required">
	<label for="numberOfFloors">
		<g:message code="masjidDetails.numberOfFloors.label" default="Number Of Floors" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="numberOfFloors" from="${1..6}" class="range" required="" value="${fieldValue(bean: masjidDetailsInstance, field: 'numberOfFloors')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: masjidDetailsInstance, field: 'canAccomodate', 'error')} required">
	<label for="canAccomodate">
		<g:message code="masjidDetails.canAccomodate.label" default="Can Accomodate" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="canAccomodate" from="${masjidDetailsInstance.constraints.canAccomodate.inList}" required="" value="${masjidDetailsInstance?.canAccomodate}" valueMessagePrefix="masjidDetails.canAccomodate"/>

</div>

<div class="fieldcontain ${hasErrors(bean: masjidDetailsInstance, field: 'twoWheelerParkingAvailable', 'error')} required">
	<label for="twoWheelerParkingAvailable">
		<g:message code="masjidDetails.twoWheelerParkingAvailable.label" default="Two Wheeler Parking Available" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="twoWheelerParkingAvailable" from="${masjidDetailsInstance.constraints.twoWheelerParkingAvailable.inList}" required="" value="${masjidDetailsInstance?.twoWheelerParkingAvailable}" valueMessagePrefix="masjidDetails.twoWheelerParkingAvailable"/>

</div>

<div class="fieldcontain ${hasErrors(bean: masjidDetailsInstance, field: 'numberOfTwoWheelerParking', 'error')} required">
	<label for="numberOfTwoWheelerParking">
		<g:message code="masjidDetails.numberOfTwoWheelerParking.label" default="Number Of Two Wheeler Parking" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numberOfTwoWheelerParking" type="number" min="0" value="${masjidDetailsInstance.numberOfTwoWheelerParking}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: masjidDetailsInstance, field: 'fourWheelerParkingAvailable', 'error')} required">
	<label for="fourWheelerParkingAvailable">
		<g:message code="masjidDetails.fourWheelerParkingAvailable.label" default="Four Wheeler Parking Available" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="fourWheelerParkingAvailable" from="${masjidDetailsInstance.constraints.fourWheelerParkingAvailable.inList}" required="" value="${masjidDetailsInstance?.fourWheelerParkingAvailable}" valueMessagePrefix="masjidDetails.fourWheelerParkingAvailable"/>

</div>

<div class="fieldcontain ${hasErrors(bean: masjidDetailsInstance, field: 'numberOfFourWheelerParking', 'error')} required">
	<label for="numberOfFourWheelerParking">
		<g:message code="masjidDetails.numberOfFourWheelerParking.label" default="Number Of Four Wheeler Parking" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numberOfFourWheelerParking" type="number" min="0" value="${masjidDetailsInstance.numberOfFourWheelerParking}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: masjidDetailsInstance, field: 'masjidType', 'error')} required">
	<label for="masjidType">
		<g:message code="masjidDetails.masjidType.label" default="Masjid Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="masjidType" from="${masjidDetailsInstance.constraints.masjidType.inList}" required="" value="${masjidDetailsInstance?.masjidType}" valueMessagePrefix="masjidDetails.masjidType"/>

</div>

<div class="fieldcontain ${hasErrors(bean: masjidDetailsInstance, field: 'languageOfPrayer', 'error')} required">
	<label for="languageOfPrayer">
		<g:message code="masjidDetails.languageOfPrayer.label" default="Language Of Prayer" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="languageOfPrayer" from="${masjidDetailsInstance.constraints.languageOfPrayer.inList}" required="" value="${masjidDetailsInstance?.languageOfPrayer}" valueMessagePrefix="masjidDetails.languageOfPrayer"/>

</div>

<div class="fieldcontain ${hasErrors(bean: masjidDetailsInstance, field: 'prayerTimings1', 'error')} required">
	<label for="prayerTimings1">
		<g:message code="masjidDetails.prayerTimings1.label" default="Prayer Timings1" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="prayerTimings1" format="yyyy-MM" precision="day"  value="${masjidDetailsInstance?.prayerTimings1}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: masjidDetailsInstance, field: 'prayerTimings2', 'error')} required">
	<label for="prayerTimings2">
		<g:message code="masjidDetails.prayerTimings2.label" default="Prayer Timings2" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="prayerTimings2" precision="day"  value="${masjidDetailsInstance?.prayerTimings2}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: masjidDetailsInstance, field: 'prayerTimings3', 'error')} ">
	<label for="prayerTimings3">
		<g:message code="masjidDetails.prayerTimings3.label" default="Prayer Timings3" />
		
	</label>
	<g:datePicker name="prayerTimings3" precision="day"  value="${masjidDetailsInstance?.prayerTimings3}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: masjidDetailsInstance, field: 'prayerTimings4', 'error')} ">
	<label for="prayerTimings4">
		<g:message code="masjidDetails.prayerTimings4.label" default="Prayer Timings4" />
		
	</label>
	<g:datePicker name="prayerTimings4" precision="day"  value="${masjidDetailsInstance?.prayerTimings4}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: masjidDetailsInstance, field: 'prayerTimings5', 'error')} ">
	<label for="prayerTimings5">
		<g:message code="masjidDetails.prayerTimings5.label" default="Prayer Timings5" />
		
	</label>
	<g:datePicker name="prayerTimings5" precision="day"  value="${masjidDetailsInstance?.prayerTimings5}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: masjidDetailsInstance, field: 'prayerTimings6', 'error')} ">
	<label for="prayerTimings6">
		<g:message code="masjidDetails.prayerTimings6.label" default="Prayer Timings6" />
		
	</label>
	<g:datePicker name="prayerTimings6" precision="day"  value="${masjidDetailsInstance?.prayerTimings6}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: masjidDetailsInstance, field: 'prayerTimingsFridayNoon', 'error')} required">
	<label for="prayerTimingsFridayNoon">
		<g:message code="masjidDetails.prayerTimingsFridayNoon.label" default="Prayer Timings Friday Noon" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="prayerTimingsFridayNoon" precision="day"  value="${masjidDetailsInstance?.prayerTimingsFridayNoon}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: masjidDetailsInstance, field: 'jummahTime', 'error')} required">
	<label for="jummahTime">
		<g:message code="masjidDetails.jummahTime.label" default="Jummah Time" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="jummahTime" precision="day"  value="${masjidDetailsInstance?.jummahTime}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: masjidDetailsInstance, field: 'contactPersonName', 'error')} required">
	<label for="contactPersonName">
		<g:message code="masjidDetails.contactPersonName.label" default="Contact Person Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="contactPersonName" required="" value="${masjidDetailsInstance?.contactPersonName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: masjidDetailsInstance, field: 'contactPersonTelNumber', 'error')} required">
	<label for="contactPersonTelNumber">
		<g:message code="masjidDetails.contactPersonTelNumber.label" default="Contact Person Tel Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="contactPersonTelNumber" maxlength="14" pattern="${masjidDetailsInstance.constraints.contactPersonTelNumber.matches}" required="" value="${masjidDetailsInstance?.contactPersonTelNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: masjidDetailsInstance, field: 'contactPersonEmail', 'error')} required">
	<label for="contactPersonEmail">
		<g:message code="masjidDetails.contactPersonEmail.label" default="Contact Person Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="contactPersonEmail" required="" value="${masjidDetailsInstance?.contactPersonEmail}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: masjidDetailsInstance, field: 'busStopName', 'error')} ">
	<label for="busStopName">
		<g:message code="masjidDetails.busStopName.label" default="Bus Stop Name" />
		
	</label>
	<g:textField name="busStopName" value="${masjidDetailsInstance?.busStopName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: masjidDetailsInstance, field: 'nearestRailwayStation', 'error')} ">
	<label for="nearestRailwayStation">
		<g:message code="masjidDetails.nearestRailwayStation.label" default="Nearest Railway Station" />
		
	</label>
	<g:textField name="nearestRailwayStation" value="${masjidDetailsInstance?.nearestRailwayStation}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: masjidDetailsInstance, field: 'landmark', 'error')} ">
	<label for="landmark">
		<g:message code="masjidDetails.landmark.label" default="Landmark" />
		
	</label>
	<g:textArea name="landmark" cols="40" rows="5" value="${masjidDetailsInstance?.landmark}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: masjidDetailsInstance, field: 'otherInfo', 'error')} ">
	<label for="otherInfo">
		<g:message code="masjidDetails.otherInfo.label" default="Other Info" />
		
	</label>
	<g:textArea name="otherInfo" cols="40" rows="5" value="${masjidDetailsInstance?.otherInfo}"/>

</div>


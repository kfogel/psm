<%--
    JSP Fragment for provider type selection form.

    @author j3_guile
    @version 1.0
 --%>

<%@page import="gov.medicaid.entities.dto.ViewStatics"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%-- BUGR-9673 (optional NPI for some provider types) --%>
<c:set var="requireNPI" value="${viewModel.tabModels[viewModel.currentTab].formSettings['Personal Information Form'].settings['requireNPI']}"></c:set>

<div class="newEnrollmentPanel">
    <div class="section">
        <input type="hidden" name="formNames" value="<%= ViewStatics.PERSONAL_INFO_FORM %>">
        <div class="wholeCol">
            <div class="row requireField">
                <label>First Name</label>
                <span class="floatL"><b>:</b></span>

                <c:set var="formName" value="_02_firstName"></c:set>
                <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                <input type="text" class="normalInput" id="firstName" name="${formName}" value="${formValue}" maxlength="45"/>
                <span class="required">*</span>
            </div>
            <div class="row">
                <label>Middle Name</label>
                <span class="floatL"><b>:</b></span>

                <c:set var="formName" value="_02_middleName"></c:set>
                <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                <input type="text" class="normalInput" id="middleName" name="${formName}" value="${formValue}" maxlength="45"/>
            </div>
            <div class="row requireField">
                <label>Last Name</label>
                <span class="floatL"><b>:</b></span>

                <c:set var="formName" value="_02_lastName"></c:set>
                <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                <input type="text" class="normalInput" name="${formName}" value="${formValue}" maxlength="45"/>
                <span class="required">*</span>
            </div>
            <div class="row requireField">
                <%-- BUGR-9673 (optional NPI for some provider types) --%>
                <label><abbr title="National Provider Identifier">NPI</abbr>
                       <span><a href="javascript:" class="NPIdefinition">?</a></span>
                </label>
                <span class="floatL"><b>:</b></span>

                <c:set var="formName" value="_02_npi"></c:set>
                <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                <input type="text" class="npiMasked normalInput" name="${formName}" value="${formValue}" maxlength="10"/>
                <span class="required">${requireNPI ? '*' : ''}
                </span>
            </div>
            <div class="row requireField">
                <label>Social Security Number</label>
                <span class="floatL"><b>:</b></span>

                <c:set var="formName" value="_02_ssn"></c:set>
                <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                <input type="text" class="ssnMasked normalInput" name="${formName}" value="${formValue}" maxlength="11"/>
                <span class="required">*</span>
            </div>
            <div class="row requireField">
                <label>Date of Birth</label>
                <span class="floatL"><b>:</b></span>
                <span class="dateWrapper floatL">

                    <c:set var="formName" value="_02_dob"></c:set>
                    <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                    <input class="date" type="text" name="${formName}" value="${formValue}" maxlength="10"/>
                    <span class="required">*</span>
                </span>
            </div>
            <div class="row">
                <label>Email Address</label>
                <span class="floatL"><b>:</b></span>

                <c:set var="formName" value="_02_email"></c:set>
                <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                <input type="text" class="normalInput" id="emailAddress" name="${formName}" value="${formValue}" maxlength="50"/>
            </div>
            <div class="clearFixed"></div>
        </div>
        <div class="tableHeader"><span>Contact Info</span></div>
        <div class="clearFixed"></div>
        <div class="wholeCol">
            <div class="row">
                <c:set var="formName" value="_02_useProviderAsContact"></c:set>
                <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                <c:set var="disableContact" value="${formValue eq 'Y' ? 'disabled' : ''}"></c:set>
                <input type="checkbox" class="checkbox" id="sameAsAbove" ${formValue eq 'Y' ? 'checked' : ''} name="${formName}" />Same as Above
            </div>
            <div class="row requireField">
                <label>Contact Name</label>
                <span class="floatL"><b>:</b></span>
                <c:set var="formName" value="_02_contactName"></c:set>
                <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                <input ${disableContact} type="text" class="${disableContact} normalInput" id="contactName" name="${formName}" value="${formValue}" maxlength="100"/>
                <span class="required">*</span>
            </div>
            <div class="row">
                <label>Contact Email Address</label>
                <span class="floatL"><b>:</b></span>

                <c:set var="formName" value="_02_contactEmail"></c:set>
                <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                <input ${disableContact} type="text" class="${disableContact} normalInput" id="contactEmail" name="${formName}" value="${formValue}" maxlength="50"/>
            </div>
            <div class="row">
                <label>Contact Phone Number</label>
                <span class="floatL"><b>:</b></span>

                <c:set var="formName" value="_02_contactPhone1"></c:set>
                <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                <input ${disableContact}
                    id="contactPhone1"
                    type="text"
                    class="${disableContact} autotab smallInput"
                    name="${formName}"
                    value="${formValue}"
                    maxlength="3"/>
                <span class="sep">-</span>
                <c:set var="formName" value="_02_contactPhone2"></c:set>
                <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                <input ${disableContact}
                    id="contactPhone2"
                    type="text"
                    class="${disableContact}
                    autotab smallInput"
                    name="${formName}"
                    value="${formValue}"
                    maxlength="3"/>
                <span class="sep">-</span>
                <c:set var="formName" value="_02_contactPhone3"></c:set>
                <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                <input ${disableContact}
                    id="contactPhone3"
                    type="text"
                    class="${disableContact} autotab smallInputP"
                    name="${formName}"
                    value="${formValue}"
                    maxlength="4"/>
                <span class="sep"><strong>ext.</strong></span>
                <c:set var="formName" value="_02_contactPhone4"></c:set>
                <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                <input ${disableContact}
                    id="contactPhone4"
                    type="text"
                    class="${disableContact} autotab smallInput"
                    name="${formName}"
                    value="${formValue}"
                    maxlength="3"/>
            </div>
            <div class="clearFixed"></div>
        </div>
    </div>
    <!-- /.section -->

    <div class="tl"></div>
    <div class="tr"></div>
    <div class="bl"></div>
    <div class="br"></div>
</div>
<!-- /.newEnrollmentPanel -->

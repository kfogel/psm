<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<div class="tabSection">
  <form action="" id="enrollmentForm" method="post">
    <sec:csrfInput />
    <h:handlebars template="provider/enrollment/steps/errors" context="${pageContext}"/>

    <div class="detailPanel firstRegistrant" style="width: 940px;">

      <h:handlebars template="provider/enrollment/steps/pages/default/provider_type" context="${pageContext}"/>

      <!-- /.section -->
      <div class="tl"></div>
      <div class="tr"></div>
      <div class="bl"></div>
      <div class="br"></div>
    </div>

    <div class="buttonBox">
      <input type="hidden" name="pageName" value="${pageName}"/>
      <c:url var="nextPageUrl" value="/provider/enrollment/steps/next" />
      <a id="nextBtn" class="greyBtn" href="javascript:submitFormById('enrollmentForm', '${nextPageUrl}')"><span class="btR"><span class="btM"><span class="icon">Next</span></span></span></a>
    </div>
  </form>
</div>

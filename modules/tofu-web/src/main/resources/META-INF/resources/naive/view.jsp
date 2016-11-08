<%@page import="com.liferay.portal.kernel.template.TemplateConstants"%>
<%@page import="com.liferay.portal.kernel.template.TemplateManagerUtil"%>
<%@ include file="../init.jsp" %>

<%
TemplateManagerUtil.getTemplate(
	TemplateConstants.LANG_TYPE_SOY,
	soyTemplateResourcesCollector.getTemplateResources(), false);
%>

<div id="<portlet:namespace />naive">
	<noscript class="text-danger">Hello Privacy aware user!</noscript>
</div>

<aui:script require="tofu-web@1.0.0/js/Naive.es">
	var Naive = tofuWeb100JsNaiveEs.default;

	var naive = new Naive({
		id: '<portlet:namespace />naive'
	});

	var handle = Liferay.on('destroyPortlet', function (event) {
		if (event.portletId === '<%= portletDisplay.getRootPortletId() %>') {
			naive.dispose();
			handle.detach();
		}
	});
</aui:script>
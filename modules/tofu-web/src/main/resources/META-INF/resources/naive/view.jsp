
<%@ page import="bootcamp.soy.internal.SoyTemplateResourcesCollector" %>

<%@ page import="com.liferay.portal.kernel.io.unsync.UnsyncStringWriter" %>
<%@ page import="com.liferay.portal.kernel.template.Template" %>
<%@ page import="com.liferay.portal.kernel.template.TemplateConstants" %>
<%@ page import="com.liferay.portal.kernel.template.TemplateManagerUtil" %>
<%@ page import="com.liferay.portal.kernel.template.TemplateResource" %>
<%@ page import="com.liferay.portal.kernel.util.PortalUtil" %>
<%@ page import="com.liferay.portal.kernel.util.UnsyncPrintWriterPool" %>

<%@ page import="java.io.Writer" %>

<%@ page import="javax.portlet.MimeResponse" %>

<%@ include file="../init.jsp" %>

<%
SoyTemplateResourcesCollector soyTemplateResourcesCollector =
	new SoyTemplateResourcesCollector("/js");

Template template = TemplateManagerUtil.getTemplate(
	TemplateConstants.LANG_TYPE_SOY,
	soyTemplateResourcesCollector.getTemplateResources(), false);

HttpServletRequest httpServletRequest =
	PortalUtil.getHttpServletRequest(renderRequest);

MimeResponse mimeResponse = (MimeResponse)renderResponse;

Writer writer = UnsyncPrintWriterPool.borrow(mimeResponse.getWriter());

template.put("namespace", "Naive.render");

template.put("counter", 42);
template.put("id", renderResponse.getNamespace() + "naive");
template.put("onClick", "");

template.prepare(httpServletRequest);

template.processTemplate(writer);
%>

<aui:script require="tofu-web@1.0.0/js/Naive.es">
	var Naive = tofuWeb100JsNaiveEs.default;

	var naive = new Naive({
		id: '<portlet:namespace />naive',
		element: '#<portlet:namespace />naive'
	});

	var handle = Liferay.on('destroyPortlet', function (event) {
		if (event.portletId === '<%= portletDisplay.getRootPortletId() %>') {
			naive.dispose();
			handle.detach();
		}
	});
</aui:script>

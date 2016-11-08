<%@ include file="../init.jsp" %>


<div id="<portlet:namespace />easy">
	<noscript class="text-danger">Hello Privacy aware user!</noscript>
</div>

<aui:script require="tofu-web@1.0.0/js/Easy.es">
	var Easy = tofuWeb100JsEasyEs.default;

	var easy = new Easy({
		id: '<portlet:namespace />easy',
		element: '#<portlet:namespace />easy'
	});

	var handle = Liferay.on('destroyPortlet', function (event) {
		if (event.portletId === '<%= portletDisplay.getRootPortletId() %>') {
			easy.dispose();
			handle.detach();
		}
	});
</aui:script>
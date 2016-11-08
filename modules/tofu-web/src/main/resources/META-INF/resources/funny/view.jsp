<%@ include file="../init.jsp" %>

<p class="alert alert-info">
	Ciao Mondo
</p>

<p class="text-center">diventa&hellip;</p>

<p class="alert alert-info" id="<portlet:namespace />funny">
	Ciao Mondo
</p>

<aui:script require="tofu-web@1.0.0/js/main.es">

	var paragraph = document.getElementById('<portlet:namespace />funny');

	paragraph.innerHTML = tofuWeb100JsMainEs.funny(paragraph.innerHTML);

</aui:script>
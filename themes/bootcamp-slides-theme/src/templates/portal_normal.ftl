<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title} - ${company_name}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />

	<link href="${portalUtil.getStaticResourceURL(request, themeDisplay.getPathThemeJavaScript() + '/vendors/highlightjs/styles/atom-one-light.css')?html}" rel="stylesheet">

	<@liferay_util["include"] page=top_head_include />
</head>

<body class="${css_class}">

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<@liferay.control_menu />

<div class="slides-wrapper" id="wrapper">

	<div class="slides-pagination">
		<#if has_navigation && is_setup_complete>
			<#include "${full_templates_path}/navigation.ftl" />
		</#if>
	</div>

	<main id="content">
			<#if selectable>
				<@liferay_util["include"] page=content_include />
			<#else>
				${portletDisplay.recycle()}

				${portletDisplay.setTitle(the_title)}

				<@liferay_theme["wrap-portlet"] page="portlet.ftl">
					<@liferay_util["include"] page=content_include />
				</@>
			</#if>
	</main>

	<footer class="slides-footer">
		<p> #LRIS2016</p>
		<p><i class="icon-twitter"></i> _pier</p>
		<p><i class="icon-github-alt"></i> yuchi</p>
		<p>Bootcamp</p>
		<p>Metal.js and Isomorphic Front-end</p>
	</footer>

</div>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

<!-- inject:js -->
<!-- endinject -->

</body>

</html>

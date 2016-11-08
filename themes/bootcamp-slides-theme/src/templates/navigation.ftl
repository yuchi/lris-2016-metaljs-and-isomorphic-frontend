<nav class="slides-pagination ${nav_css_class}" id="navigation" role="navigation">
	<h1 class="hide-accessible"><@liferay.language key="navigation" /></h1>

	<ul aria-label="<@liferay.language key="site-pages" />" role="menubar">
		<#list nav_items as nav_item>
			<#assign
				nav_item_attr_has_popup = ""
				nav_item_attr_selected = ""
				nav_item_css_class = ""
				nav_item_layout = nav_item.getLayout()
			/>

			<#if nav_item.isSelected()>
				<#assign
					nav_item_attr_has_popup = "aria-haspopup='true'"
					nav_item_attr_selected = "aria-selected='true'"
					nav_item_css_class = "selected active"
				/>
			</#if>

			<li ${nav_item_attr_selected} class="${nav_item_css_class}" id="layout_${nav_item.getLayoutId()}" role="presentation">
				<a
					aria-labelledby="layout_${nav_item.getLayoutId()}"
					${nav_item_attr_has_popup}
					href="${nav_item.getURL()}"
					${nav_item.getTarget()}
					role="menuitem"
				>
					<span class="sr-only">${nav_item.getName()}</span>
				</a>
			</li>
		</#list>
	</ul>
</nav>

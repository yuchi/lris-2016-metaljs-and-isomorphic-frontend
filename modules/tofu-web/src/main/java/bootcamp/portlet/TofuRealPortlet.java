package bootcamp.portlet;

import bootcamp.constants.TofuPortletKeys;

import com.liferay.portal.portlet.bridge.soy.SoyPortlet;

import javax.portlet.Portlet;

import org.osgi.service.component.annotations.Component;

@Component(
	immediate = true,
	property = {
		"com.liferay.portlet.display-category=category.sample",
		"com.liferay.portlet.instanceable=true",
		"javax.portlet.display-name=Tofu Real",
		"javax.portlet.init-param.template-path=/",
		"javax.portlet.name=" + TofuPortletKeys.TOFU_REAL,
		"javax.portlet.resource-bundle=content.Language",
		"javax.portlet.security-role-ref=power-user,user"
	},
	service = Portlet.class
)
public class TofuRealPortlet extends SoyPortlet {
}

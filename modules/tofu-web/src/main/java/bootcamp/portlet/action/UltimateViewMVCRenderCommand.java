package bootcamp.portlet.action;

import bootcamp.constants.TofuPortletKeys;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.portlet.PortletException;
import javax.portlet.RenderRequest;
import javax.portlet.RenderResponse;
import javax.portlet.PortletURL;

import org.osgi.service.component.annotations.Component;

import com.liferay.portal.kernel.portlet.LiferayPortletURL;
import com.liferay.portal.kernel.portlet.bridges.mvc.MVCRenderCommand;
import com.liferay.portal.kernel.template.Template;
import com.liferay.portal.kernel.util.ParamUtil;
import com.liferay.portal.kernel.util.WebKeys;

@Component(
	immediate = true,
	property = {
		"javax.portlet.name=" + TofuPortletKeys.TOFU_ULTIMATE,
		"mvc.command.name=/", "mvc.command.name=/tofu/view"
	},
	service = MVCRenderCommand.class
)
public class UltimateViewMVCRenderCommand implements MVCRenderCommand {

	@Override
	public String render(
			RenderRequest renderRequest, RenderResponse renderResponse)
		throws PortletException {

		int counter = ParamUtil.getInteger(renderRequest, "counter", 42);

		PortletURL incrementURL = renderResponse.createRenderURL();

		incrementURL.setParameter("counter", String.valueOf(counter + 1));

		Template template = getTemplate(renderRequest);

		template.put("counter", counter);
		template.put("href", incrementURL.toString());

		// Function References

		template.put("onClick", "");

		return "Ultimate";
	}

	protected Template getTemplate(RenderRequest renderRequest) {
		return (Template)renderRequest.getAttribute(WebKeys.TEMPLATE);
	}

}

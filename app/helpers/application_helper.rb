module ApplicationHelper
  def navbar(controller)
    controller = controller.to_s
    if policy(Object.const_get(controller.classify)).index?
      content_tag(:li, class: controller_name == controller ? :active : nil) do
        link_to controller.camelize, send("#{controller}_path")
      end
    end
  end
end

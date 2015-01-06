module ApplicationHelper
  def navbar(controller)
    controller = controller.to_s
    if policy(Object.const_get(controller.classify)).index?
      content_tag(:li, class: controller_name == controller ? :active : nil) do
        link_to controller.camelize, send("#{controller}_path")
      end
    end
  end

  def bootswatch_alert_types(alert_type)
    case alert_type.to_sym
    when :info then
      'alert-info'
    when :notice, :success then
      'alert-success'
    when :alert, :error then
      'alert-danger'
    else
      'alert-warning'
    end
  end
end

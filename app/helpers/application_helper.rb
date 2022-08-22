module ApplicationHelper
  def error_message_on(object, method)
    return unless object.respond_to?(:errors) && object.errors.include?(method)
    errors = field_errors(object, method).join(', ')

    content_tag(:div, "#{method.to_s.humanize} #{errors}", class: 'form-group-error')
  end

  private

  def field_errors(object, method)
   object.errors[method]
  end
end

module ApplicationHelper
  ACTIVE = "active"

  def activate_if_current_page(path)
    ACTIVE if current_page?(path)
  end

  def devise_error_messages!
    return unless devise_error_messages?

    messages = resource.errors.full_messages.collect { |msg| content_tag(:li, msg) }.join

    html = <<-HTML
    <div id="error_explanation">
      <ul>#{messages}</ul>
    </div>
    HTML

    html.html_safe
  end
end

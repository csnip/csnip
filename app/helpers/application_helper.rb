# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def flash_div(*keys)
    return '' if keys.blank?

    flash_info = keys.collect { |key|
      content_tag(:div,
                  h(flash[key]), :id => "flash_#{key}", :class => "#{key} flash") if flash[key]
    }.join

    flash_info
  end

end

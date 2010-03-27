# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def formatted_boolean(value, bold_false = false, nil_label = "Not Sure")
    case value
      when nil
        nil_label
      when true
        "Yes"
      when false
        if bold_false
          content_tag(:strong, "No")
        else
          "No"
        end
    end
  end
  
  def flash_div(*keys)
    return '' if keys.blank?

    flash_info = keys.collect { |key|
      content_tag(:div,
                  h(flash[key]), :id => "flash_#{key}", :class => "#{key} flash") if flash[key]
    }.join

    flash_info
  end

end

# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def formatted_boolean(value, options = {})
    nil_label = options[:nil_label] || ''
    case value
    when nil
      nil_label
    when true
      "Yes"
    when false
      "No"
    end
  end

  def formatted_phone(value)
    return '' if value.blank?

    phone_string = value.gsub(/[\s().-]/i, '')
    match = /^\d{10}?$/.match(phone_string)
    if !match
      value
    else
      "#{match[0][0, 3]}-#{match[0][3, 3]}-#{match[0][6, 4]}"
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

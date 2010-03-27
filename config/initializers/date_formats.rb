formats = {
  :mdt => '%m/%d %l:%M %p',
  :md => '%m/%d',  
  :dmdy => '%A %m/%d/%Y',
  :mdy => '%m/%d/%Y',
  :mds => '%m/%d/%y',
  :my => '%m/%Y',  
  :mdyt => '%m/%d/%Y %l:%M %p',
  :mdtz => '%m/%d %l:%M %p %Z',
  :mdytz => '%m/%d/%Y %l:%M %p %Z',
  :dmdytz => '%A %m/%d/%Y %l:%M %p %Z',
  :t => '%l:%M %p',
}

ActiveSupport::CoreExtensions::Time::Conversions::DATE_FORMATS.merge!(formats)
ActiveSupport::CoreExtensions::Date::Conversions::DATE_FORMATS.merge!(formats)
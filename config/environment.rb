# Load the rails application
require File.expand_path('../application', __FILE__)

module ActionView::Helpers::InstanceTagMethods
  remove_const :DEFAULT_TEXT_AREA_OPTIONS
  DEFAULT_TEXT_AREA_OPTIONS = { "cols" => 40, "rows" => 5 }
end

# Initialize the rails application
GfundV2New::Application.initialize!


require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  using = ENV["CI"] ? :headless_chrome : :chrome
  driven_by :selenium, using: using, screen_size: [1400, 1400]

  Dir[Rails.root.join("test", "system", "support", "*_helper.rb")].each do |file|
    require file
    module_name = File.basename(file, '.rb').camelize
    include ["System", "Support", module_name].join("::").constantize
  end
end

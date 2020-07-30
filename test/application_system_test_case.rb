require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :selenium, using: :headless_chrome, screen_size: [1400, 1400]
end

client = Selenium::WebDriver::Remote::Http::Default.new
client.read_timeout = 120 # seconds

options = ::Selenium::WebDriver::Chrome::Options.new

options.add_argument('--headless')
options.add_argument('--no-sandbox')
options.add_argument('--disable-dev-shm-usage')

# asset of save_and_open_page
Capybara.asset_host = 'http://localhost:3000'

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

# javascript_driver set webkit or chrome
Capybara.javascript_driver = :chrome

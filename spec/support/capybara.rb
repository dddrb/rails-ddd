# asset host of save_and_open_page
Capybara.asset_host = Settings.self_url

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

# javascript driver set webkit or chrome
Capybara.javascript_driver = :chrome

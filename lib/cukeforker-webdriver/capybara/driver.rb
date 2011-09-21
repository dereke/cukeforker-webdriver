require 'capybara'
require_relative '../no_lock_firefox_bridge'

class Capybara::Selenium::Driver
  def browser
    unless @browser
      @port = ENV['web_driver_port']
      options[:port] = @port
      @browser = Selenium::WebDriver::Driver.new(CukeForker::WebDriver::NoLockFirefoxBridge.new(options.reject { |key,val| SPECIAL_OPTIONS.include?(key)}))

      main = Process.pid
      at_exit do
        quit if Process.pid == main
      end
    end
    @browser
  end

  def quit
    begin
      @browser.quit
    rescue Errno::ECONNREFUSED
    ensure
    end
  end
end
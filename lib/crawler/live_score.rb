require "selenium-webdriver"

module Crawler
  class LiveScore
    attr_reader :driver

    def initialize
      options = {
        "phantomjs.cli.args" => [
          "--ssl-protocol=any",
          "--ignore-ssl-errors=true",
          "--web-security=false",
          "acceptSslCerts=true"
        ]
      }

      capabilities = Selenium::WebDriver::Remote::Capabilities.phantomjs(options)
      @driver = Selenium::WebDriver.for(:phantomjs, desired_capabilities: capabilities)
    end

    def get_schedule_premier_league
      driver.get "http://www.livescore.com/soccer/england/premier-league/"
    end
  end
end

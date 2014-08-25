require "statusbot/workers/version"
require "statusbot/workers/error"
require "statusbot/api"

module Statusbot
  module Workers
    @@connected = false

    def self.api_for(user)
      connect
      Base.new(user)
    end

    def self.connect
      unless @@connected
        begin
          Statusbot::Api.connect
          @@connected = true
        rescue => e
          raise DatabaseConnectionError.new(e)
        end
      end
    end

    def self.disconnect
      @@connected = false
    end

    def self.create_runner(&block)
      config = Config.new
      block.call config

      # validate before returning
      config.validate!

      Runner.new(config)
    end
  end
end

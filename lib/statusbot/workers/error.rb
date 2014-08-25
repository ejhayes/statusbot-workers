module Statusbot
  module Workers
    class Error < StandardError
    end

    class DatabaseConnectionError < Error
    end
  end
end

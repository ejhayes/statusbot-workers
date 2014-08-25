module Statusbot
  
  module Workers
    
    class Runner
      attr_reader :config

      def initialize(c)
        raise ArgumentError unless c.is_a? Statusbot::Workers::Config
        @config = c
        config.debug "runner loaded"
      end

      def run
        # run everything here
      end

    end

  end

end
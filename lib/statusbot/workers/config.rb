module Statusbot
  
  module Workers
    
    class Config
      @validations ||= []

      # configuration parameters
      attr_reader :log
      def log=(val)
        @logger = Logger.new(val)
        update_logging_level
      end

      attr_reader :debug
      def debug=(val)
        @debug = val
        update_logging_level
      end

      attr_reader :environment
      def environment=(val)
        ENV['RAILS_ENV'] = val
        @environment = val
      end

      def validate!
        @validations.each do |validator|
          validator.call
        end
      end

      private
      def register_validator(&block)
        @validations << block
      end

      def update_logging_level
        unless log.nil?
          if debug
            log.level = Logger::DEBUG
          else
            log.level = Logger::WARN
          end
        end
      end
    end

  end

end
require 'formaticon'

module Formaticon
  module Converters

    module Ini

      class Converter < BaseConverter

        def from_ruby
          base.map do |section, settings|
            next if settings.nil?
            content = settings.map do |key, value|
              next if value.nil?
              "#{key} = #{parse_value(value)}"
            end.compact
            content.unshift("[#{section}]").push('').join("\n")
          end.compact.join("\n")
        end

        private

        def parse_value(val)
          case val
          when Numeric
            val
          when TrueClass
            'On'
          when FalseClass
            'off'
          else
            val.to_s.upcase == val ? val : "'#{val}'"
          end
        end
      end

    end


  end
end

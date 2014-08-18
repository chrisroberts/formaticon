require 'formaticon'

module Formaticon
  module Converters

    module Erlang

      class Converter < BaseConverter

        def to_ruby
          Erlang2Ruby.new(base).ruby
        end

        def from_ruby
          convert_type(base)
        end

        private

        def convert_type(obj)
          case obj
          when Hash
          when Array
          else
          end
        end

        class Erlang2Ruby

          attr_reader :erl_string

          def initialize(erl_string)
            @erl_string = erl_string
          end

          def ruby
            data = erl_string.dup
            data.scan(/('?[A-Za-z0-9_\-@\.]+'?)/).flatten.sort_by(&:length).reverse.each do |string|
              unless(string.include?("'"))
                data.gsub!(/([^A-Za-z0-9_\-@\.])#{Regexp.escape(string)}/, "\\1'#{string}'")
              end
            end
            data.gsub!('{', 'Hash[')
            data.gsub!('}', ']')
            self.instance_eval(data.gsub(/\s/, ''))
          end

        end

        private

        def method_missing(sym, *args)
          sym.to_s
        end

        def convert_to_ruby
          conv_str = string
          Chef::Log.debug "Manipulated erl string: #{conv_str}"
          conv_str
        end

      end

    end
  end
end

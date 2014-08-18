require 'formaticon'

module Formaticon
  module Converters

    module Xml

      class Converter < BaseConverter

        def initialize(*args)
          super
          unless(defined?(XmlSimple))
            require 'xmlsimple'
          end
        end

        def from_ruby
          XmlSimple.xml_out(base, 'AttrPrefix' => true, 'KeepRoot' => true)
        end

      end

    end
  end
end

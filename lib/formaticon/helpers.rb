require 'formaticon'

module Formaticon
  module Helpers

    def erl_to_ruby(string)
      Erlang::Converter.new(string).to_ruby
    end

    def ruby_to_erl(obj)
      Erlang::Converter.new(obj).from_ruby
    end

    def ruby_to_xml(obj)
      Xml::Converter.new(obj).from_ruby
    end

    def ruby_to_ini(obj)
      Ini::Converter.new(obj).from_ruby
    end

  end

  extend Helpers
end

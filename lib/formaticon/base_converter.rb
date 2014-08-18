require 'formaticon'

module Formaticon
  class BaseConverter
    attr_reader :base

    def initialize(obj)
      @base = obj
    end

    def from_ruby
      raise NotImplementedError.new
    end

    def to_ruby
      raise NotImplementedError.new
    end
  end
end

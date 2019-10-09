require 'mocha/ruby_version'
require 'mocha/stubbed_method'

module Mocha
  class AnyInstanceMethod < StubbedMethod
    private

    def mock_owner
      stubbee.any_instance
    end

    def original_method_body
      original_method
    end

    def stubbee_method
      stubbee.instance_method(method_name)
    end

    def original_method_owner
      stubbee
    end
  end
end

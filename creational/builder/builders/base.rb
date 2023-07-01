# The Builder interface specifies methods for creating the different parts of the Product objects.
class Builders
  class Base
    # A fresh builder instance should contain a blank product object, which is used in further assembly.
    def initialize
      reset
    end

    def reset
      @product = Car.new
    end

    # Concrete Builders are supposed to provide their own methods for retrieving results.
    # That's because various types of builders may create entirely different products that don't follow same interface.
    # Therefore, such methods cannot be declared in the base Builder interface
    # (at least in a statically typed programming language).
    #
    # Usually, after returning the end result to the client,
    # a builder instance is expected to be ready to start producing another product.
    # That's why it's a usual practice to call the reset method at the end of the `getProduct` method body.
    # However, this behavior is not mandatory, and you can make your builders wait
    # for an explicit reset call from the client code before disposing of the previous result.
    def product
      product = @product
      reset
      product
    end

    def produce_body
      raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
    end

    def produce_engine
      raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
    end

    def produce_style
      raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
    end
  end
end

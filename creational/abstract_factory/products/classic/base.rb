# Each distinct product of a product family should have a base interface.
# All variants of the product must implement this interface.
module Products::Classic
  class Base
    def type
      raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
    end

    def compare(other)
      "Current #{self.type} is not #{other.type}"
    end
  end
end

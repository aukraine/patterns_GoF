# The Abstract Factory interface declares a set of methods that return different abstract products.
# These products are called a family and are related by a high-level theme or concept.
# Products of one family are usually able to collaborate among themselves.
# Family of products may have several variants, but the products of one variant are incompatible with products of other.
module Factories
  class Base
    def create_sofa
      raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
    end

    def create_table
      raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
    end

    def create_chair
      raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
    end
  end
end

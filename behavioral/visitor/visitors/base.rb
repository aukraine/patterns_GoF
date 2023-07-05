# The Visitor Interface declares a set of visiting methods that correspond to component classes.
# The signature of a visiting method allows the visitor to identify exact class of the component that it's dealing with.
module Visitors
  class Base
    def visit_component_a(_element)
      raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
    end

    def visit_component_b(_element)
      raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
    end
  end
end

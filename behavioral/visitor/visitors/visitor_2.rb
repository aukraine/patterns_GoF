module Visitors
  class Visitor2 < Base
    def visit_component_a(element)
      puts "#{element.exclusive_method_of_component_a} + #{self.class}"
    end

    def visit_component_b(element)
      puts "#{element.special_method_of_component_b} + #{self.class}"
    end
  end
end
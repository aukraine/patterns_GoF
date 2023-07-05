# Same here: visit_component_b => ConcreteComponentB
module Components
  class ComponentB < Base
    def accept(visitor)
      visitor.visit_component_b(self)
    end

    def special_method_of_component_b
      self.class
    end
  end
end

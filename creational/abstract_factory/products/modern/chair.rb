# Concrete Products are created by corresponding Concrete Factories.
module Products::Modern
  class Chair < Base
    def type
      'Modern Chair'
    end
  end
end

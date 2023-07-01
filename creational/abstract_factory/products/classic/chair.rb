# Concrete Products are created by corresponding Concrete Factories.
module Products::Classic
  class Chair < Base
    def type
      'Classic Chair'
    end
  end
end

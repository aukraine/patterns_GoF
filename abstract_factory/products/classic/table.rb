# Concrete Products are created by corresponding Concrete Factories.
module Products::Classic
  class Table < Base
    def type
      'Classic Table'
    end
  end
end

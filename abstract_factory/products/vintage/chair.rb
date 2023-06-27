# Concrete Products are created by corresponding Concrete Factories.
module Products::Vintage
  class Chair < Base
    def type
      'Vintage Chair'
    end
  end
end

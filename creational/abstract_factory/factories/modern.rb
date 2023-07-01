# Concrete Factories produce a family of products that belong to a single variant.
# The factory guarantees that resulting products are compatible.
# Note that signatures of the Concrete Factory's methods return an abstract product,
# while inside the method a concrete product is instantiated.
module Factories
  class Modern < Base
    def create_sofa
      Products::Modern::Sofa.new
    end

    def create_table
      Products::Modern::Table.new
    end

    def create_chair
      Products::Modern::Chair.new
    end
  end
end

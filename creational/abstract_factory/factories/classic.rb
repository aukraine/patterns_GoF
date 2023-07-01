# Each Concrete Factory has a corresponding product variant.
module Factories
  class Classic < Base
    def create_sofa
      Products::Classic::Sofa.new
    end

    def create_table
      Products::Classic::Table.new
    end

    def create_chair
      Products::Classic::Chair.new
    end
  end
end

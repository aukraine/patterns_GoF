# Each Concrete Factory has a corresponding product variant.
module Factories
  class Vintage < Base
    def create_sofa
      ::Products::Vintage::Sofa.new
    end

    def create_table
      Products::Vintage::Table.new
    end

    def create_chair
      Products::Vintage::Chair.new
    end
  end
end

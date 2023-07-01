# The Concrete Builder classes follow the Builder interface and provide specific implementations of the building steps.
# Your program may have several variations of Builders, implemented differently.
class Builders
  class Standard < Base
    def produce_body
      @product.add('STD chassis')
    end

    def produce_engine
      @product.add('STD engine')
    end

    def produce_style
      @product.add('STD style')
    end
  end
end

# The Concrete Builder classes follow the Builder interface and provide specific implementations of the building steps.
# Your program may have several variations of Builders, implemented differently.
class Builders
  class Sport < Base
    def produce_body
      @product.add('GTI chassis')
    end

    def produce_engine
      @product.add('GTI engine')
    end

    def produce_style
      @product.add('GTI style')
    end
  end
end

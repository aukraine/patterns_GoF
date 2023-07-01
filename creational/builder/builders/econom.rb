# The Concrete Builder classes follow the Builder interface and provide specific implementations of the building steps.
# Your program may have several variations of Builders, implemented differently.
class Builders
  class Econom < Base
    def produce_body
      @product.add('ECO chassis')
    end

    def produce_engine
      @product.add('ECO engine')
    end

    def produce_style
      @product.add('ECO style')
    end
  end
end

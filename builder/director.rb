# The Director is only responsible for executing the building steps in a particular sequence.
# It is helpful when producing products according to a specific order or configuration.
# Strictly speaking, the Director class is optional, since the client can control builders directly.
class Director
  attr_accessor :builder

  def initialize
    @builder = nil
  end

  # The Director works with any builder instance that the client code passes to it.
  # This way, the client code may alter the final type of the newly assembled product.
  def builder=(builder)
    @builder = builder
  end

  # The Director can construct several product variations using the same building steps.
  def build_minimal_configuration
    @builder.produce_engine
  end

  def build_middle_configuration
    @builder.produce_engine
    @builder.produce_style
  end

  def build_full_configuration
    @builder.produce_body
    @builder.produce_engine
    @builder.produce_style
  end
end

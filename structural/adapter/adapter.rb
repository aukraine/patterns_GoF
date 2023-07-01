require_relative 'target'

# The Adapter makes the Adaptee's interface compatible with the Target's interface.
class Adapter < Target
  def initialize(adaptee)
    @adaptee = adaptee
  end

  def request
    "Adapter: (TRANSLATED) #{@adaptee.specific_request.reverse!}"
  end
end

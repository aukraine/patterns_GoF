# The Delivery interface declares the operations that all concrete products must implement.
class Delivery
  def confirm
    "by #{type.capitalize} as #{self.class} instance"
  end

  def type
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end

# Child classes provide various implementations of the Delivery interface.
class TruckDelivery < Delivery

  def type
    'Truck'
  end
end

class ShipDelivery < Delivery
  def type
    'Ship'
  end
end

class PlaneDelivery < Delivery
  def type
    'Plane'
  end
end

# The Creator class declares the factory method that is supposed to return an
# object of a Product class. The Creator's subclasses usually provide the
# implementation of this method.
class Creator
  # Note that the Creator may also provide some default implementation of the
  # factory method.
  def factory_method
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  # Also note that, despite its name, the Creator's primary responsibility is
  # not creating products. Usually, it contains some core business logic that
  # relies on Product objects, returned by the factory method. Subclasses can
  # indirectly change that business logic by overriding the factory method and
  # returning a different type of product from it.
  def create_delivery
    # Call the factory method to create a Product object.
    delivery = factory_method

    # Now, use the product.
    puts "Created Delivery #{delivery.confirm}"

    delivery
  end
end

# Concrete Creators override the factory method in order to change the resulting
# product's type.
class TruckDeliveryCreator < Creator
  # Note that the signature of the method still uses the abstract product type,
  # even though the concrete product is actually returned from the method. This
  # way the Creator can stay independent of concrete product classes.
  def factory_method
    TruckDelivery.new
  end
end

class ShipDeliveryCreator < Creator
  def factory_method
    ShipDelivery.new
  end
end

class PlaneDeliveryCreator < Creator
  def factory_method
    PlaneDelivery.new
  end
end

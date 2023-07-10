# The Subsystem can accept requests either from the facade or client directly.
# In any case, to the Subsystem, the Facade is yet another client, and it's not a part of the Subsystem.
class Subsystem1
  def operation1
    'Subsystem1: Ready!'
  end

  def operation_n
    'Subsystem1: Go!'
  end
end

# Some facades can work with multiple subsystems at the same time.
class Subsystem2
  def operation1
    'Subsystem2: Get ready!'
  end

  def operation_z
    'Subsystem2: Fire!'
  end
end

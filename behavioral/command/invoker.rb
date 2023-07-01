# The Invoker is associated with one or several commands.
# It sends a request to the command.
class Invoker
  # Initialize commands.
  attr_accessor :on_start, :on_finish

  def on_start=(command)
    @on_start = command
  end

  def on_finish=(command)
    @on_finish = command
  end

  # The Invoker does not depend on concrete command or receiver classes.
  # The Invoker passes a request to a receiver indirectly, by executing a command.
  def do_something_important
    puts 'Invoker: Does anybody want something done before I begin?'
    on_start.execute if on_start.is_a?(Commands::Base)

    puts 'Invoker: ...doing something really important...'

    puts 'Invoker: Does anybody want something done after I finish?'
    on_finish.execute if on_finish.is_a?(Commands::Base)
  end
end

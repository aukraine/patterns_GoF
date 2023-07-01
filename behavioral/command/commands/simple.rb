# Some commands can implement simple operations on their own.
module Commands
  class Simple < Base
    def initialize(payload)
      @payload = payload
    end

    def execute
      puts "Commands::Simple: See, I can do simple things like printing (#{@payload})"
    end
  end
end

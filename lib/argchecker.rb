require './lib/arggen.rb'

class ArgChecker
  attr_accessor :arggen
  def initialize
    @arggen = ArgGen.new
  end
  
  def check_io(message, output)
    if message == false
      puts "Message file does not exist. Exiting..."
      false
    elsif output == false
      puts "No output file specified. Exiting..."       
      false     
    else
      true
    end
  end
  
  def check_key(key)
    if key == false
      new_key = @arggen.gen_key(nil)
      puts "Invalid key. \n using: #{new_key}, instead"
      new_key
    else
      key
    end     
  end
  
  
  def check_date(date)
    if date == false
      new_date = @arggen.gen_date(nil)
      puts "Invalid date. \n using: #{new_date}, instead"
      new_date
    else
      date
    end     
  end
  
end
require "./lib/loader.rb"
require "./lib/keygen.rb"
require "./lib/arggen.rb"
require "./lib/argchecker"



class Encryptor
  attr_accessor :message, :key, :date, :keygen
  def initialize     
    @argchecker = ArgChecker.new
    @arggen = ArgGen.new     
  end
  def encrypt
    @message = @arggen.gen_message(ARGV[0])
    @output = @arggen.gen_output(ARGV[1])
    @key = @arggen.gen_key(ARGV[2])
    @date = @arggen.gen_date(ARGV[3])
    args_status = @argchecker.check_io(@messsage, @output, @key, @date)
    @key = @argchecker.check_key(@key)
    @date = @argchecker.check_date(@date)
    if !args_status
      return false
    else
      puts "everything looks good..."
      puts "using message file: #{@message}"
      puts "using output file: #{@output}"
      puts "using key: #{@key}"
      puts "using date: #{@date}"
      
    end
  end
  
  
  
  
  
  
  
end

if __FILE__ == $0   
  encryptor = Encryptor.new
  
  encryptor.encrypt
end



#TODO: get message
#lets have a class for loading messages to and from file and from command line


#TODO: get key

#TODO: get date

#TODO: apply encryption to message

#TODO: output message



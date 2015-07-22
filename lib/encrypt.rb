require "./lib/loader.rb"
require "./lib/keygen.rb"
require "./lib/arggen.rb"



class Encryptor
  attr_accessor :message, :key, :date, :keygen
  def initialize     
    @arggen = ArgGen.new
    @keylength = 5
  end
  def encrypt
    message = @arggen.gen_message(ARGV[0])
    output = @arggen.gen_output(ARGV[1])
    gen_key = @arggen.gen_key(ARGV[2])
    date = @arggen.gen_date(ARGV[3])
    args_status = @arggen.check_args(messsage, output)
  end
  def check_args
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



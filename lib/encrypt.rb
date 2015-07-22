require "./lib/loader.rb"
require "./lib/keygen.rb"
require "./lib/arggen.rb"



class Encryptor
  attr_accessor :message, :key, :date, :keygen
  def initialize
    @loader = Loader.new
    @keygen = KeyGen.new

    @keylength = 5
  end
  def encrypt
    message = gen_message(ARGV[0])
    output = gen_output(ARGV[1])
    gen_key = gen_key(ARGV[2])
    date = gen_date(ARGV[3])
    args_status = check_args(messsage, output)
  end
  def check_args
  end
  
  def gen_message(cli_arg)
    if cli_arg == nil       
      get_user_message
    else
      load_message_from_file(cli_arg)
    end
  end
  
  def load_message_from_file(cli_arg)
    @loader
    str = @loader.str_from_file(cli_arg)
    str
  end

  def get_user_message
    puts "please enter a string to encrypt then press enter"
    puts "use option -help for help"
    message = get.chomp
    message     
  end
  
  
  def gen_output(cli_arg)
    if cli_arg == nil
      false
    else
      @loader.get_output_handle(cli_arg)
    end
  end
  
  def gen_key(cli_arg)
    if cli_arg == nil
      @keygen.gen(@keylength)
    else       
      @keygen.check_key(cli_arg, @keylength)       
    end
  end

  def gen_date(arg)
    true
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



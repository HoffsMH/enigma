require './lib/loader'
require './lib/keygen'
require './lib/dategen'


class ArgGen
  attr_accessor :keygen
  def initialize
    @loader = Loader.new
    @keygen = KeyGen.new
    @dategen = DateGen.new     
    @keylength = 5
  end
  def gen_message(cli_arg)
    if cli_arg == nil       
      get_user_message
    else
      load_message_from_file(cli_arg)
    end
  end
  
  def load_message_from_file(cli_arg)     
    str = @loader.str_from_file(cli_arg)
    str
  end
  
  def get_user_message
    puts "please enter a string to encrypt then press enter"
    puts "use option -help for help"
    message = gets.chomp
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
  
  def gen_date(cli_arg)
    if cli_arg == nil
      @dategen.gen
    else
      @dategen.check_date(cli_arg)       
    end
    
  end
  
end
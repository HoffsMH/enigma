class Loader
  def initialize
    
  end
  def str_from_file(cli_arg)
    if File.exist?(cli_arg)
      str = File.read(cli_arg)
      return str
    else
      return false
    end
    
  end
  def get_output_handle(cli_arg)
      return File.open(cli_arg, 'w')     
  end
end
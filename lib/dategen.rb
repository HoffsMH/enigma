class DateGen
  def gen
    date = Time.new()
    day = date.mday.to_s.rjust(2, '0')
    month = date.mon.to_s.rjust(2, '0')
    year = date.year.to_s[-2] + date.year.to_s[-1]
    output = "#{day}#{month}#{year}"
    output.to_i
  end
  
  def check_date(cli_arg)   
    if cli_arg.length != 6
      false
    else
      cli_arg
    end     

  end
end
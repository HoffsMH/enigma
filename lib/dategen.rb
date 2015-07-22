class DateGen
  def self.gen
    date = Time.new().to_date
    day = date.mday.to_s.rjust(2, '0')
    month = date.mon.to_s.rjust(2, '0')
    year = date.year.to_s[-2] + date.year.to_s[-1]
    output = "#{day}#{month}#{year}"
  end
end
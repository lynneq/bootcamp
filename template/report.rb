class Report
  def initialize(printMessage)
    @message = printMessage
  end
  
  def print
    begin  
      raise 'Please use specific class to initialize!'
    rescue Exception => e  
      puts e.message  
      puts e.backtrace.inspect  
    end
  end  
end

r = Report.new("H")
r.print

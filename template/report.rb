class Report
  
  def initialize(printMessage)
    @message = printMessage
  end
  
  def print(targetFormat)
    if targetFormat == "html"
      puts "<html>"
      puts "<title>template page</title>"
      puts "<body>"+@message+"</body>"
      puts "</html>"
    elsif targetFormat == "text"
      puts @message
    end
  end
  
end


report = Report.new("Hello")
report.print("html")
report.print("text")
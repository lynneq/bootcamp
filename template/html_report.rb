class HtmlReport < Report
  def print
    puts "<html>"
    puts "<title>template page</title>"
    puts "<body>"+@message+"</body>"
    puts "</html>"
  end
end
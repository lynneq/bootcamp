$LOAD_PATH << File.dirname(__FILE__)

require 'test/unit'
require 'report'
require 'html_report'
require 'text_report'

require 'util_capture'

class ReportTest < Test::Unit::TestCase
  def test_report_catch_exception
    r = Report.new("Hello!")
    r.print
    assert true, "Please use specific class to initialize!"
  end
  
  def test_html_report_print
    out = capture_stdout do 
      report = HtmlReport.new("Hello, Html!")
      report.print
    end
    assert_equal "<html>\n<title>template page</title>\n<body>Hello, Html!</body>\n</html>\n", out.string
  end
  
  def test_text_report_print
    out = capture_stdout do 
      report = TextReport.new("Hello, Text!")
      report.print
    end
    assert_equal "Hello, Text!\n", out.string
  end
end

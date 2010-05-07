require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
require File.expand_path(File.dirname(__FILE__) + '/regular_methods')

describe "d.p" do
  before do
    @stdout_string = StringIO.new
    $stdout = @stdout_string
  end
  
  it "should simplify debug prints" do
    some_method
    @stdout_string.string.should == 'name="Niclas", @age=38, team=["Niclas", "Johan", "Hans"]' + "\n"
  end
  
  it "should keep whitespace in result" do
    whitespace_method
    @stdout_string.string.should == 'whitespace_string="  foo "' + "\n"
  end
  
end


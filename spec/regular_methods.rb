require File.expand_path(File.dirname(__FILE__) + '/../lib/dp')

def some_method
    name = 'Niclas'
    @age = 38
    team = ['Niclas', 'Johan', 'Hans']
  
    d.p "name, @age, team"
end

def whitespace_method
  whitespace_string = "  foo "
  d.p "whitespace_string"
end

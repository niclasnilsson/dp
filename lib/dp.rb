module Kernel
  alias_method :d, :binding
end

class Binding
  # Prints a debug string from a comma-separated string of expressions
  #
  # ==== Parameters
  #
  # * +debug_str+ - The string with expressions to print
  #
  # ==== Examples
  #
  #   # Decrement the post_count column for the record with an id of 5
  #   DiscussionBoard.decrement_counter(:post_count, 5)
  #   def some_method
  #     name = 'Niclas'
  #     @age = 38
  #     team = ['Niclas', 'Johan', 'Hans']
  #  
  #      d.p "name, @age, team"
  #
  #      # output is: 'name="Niclas", @age=38, team=["Niclas", "Johan", "Hans"]'
  #   end

  def p debug_str
    str = ''
    separator = ''
    variables = debug_str.split(',').map { |v| v.strip }
    variables.each do |var|
      result = Kernel.eval var, self
      str += "#{separator}#{var}=#{result.inspect.strip}"
      separator = ', '
    end
    puts str
  end
end

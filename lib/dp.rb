module Kernel
  alias_method :d, :binding
end

class Binding
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

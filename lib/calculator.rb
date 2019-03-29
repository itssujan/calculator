require 'humanize'

# Calculator can be used to perform different arthimetic operations on numbers
class Object
  START_NUMBER = 0
  END_NUMBER = 9

  OPERATORS = { plus: '+', minus: '-', times: '*', divided_by: '/' }.freeze

  (START_NUMBER..END_NUMBER).each do |number|
    define_method(:"#{number.humanize}") do |operation = nil|
      return eval("#{number} #{operation}") unless operation.nil?

      number
    end
  end

  OPERATORS.each do |operator, operator_symbol|
    define_method(:"#{operator}") do |num|
      "#{operator_symbol}#{num}"
    end
  end
end

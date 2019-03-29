require 'humanize'

# Calculator can be used to perform different arthimetic operations on numbers
class Calculator
  START_NUMBER = 0
  END_NUMBER = 9

  OPERATORS = { plus: '+', minus: '-', times: '*', divided_by: '/' }.freeze

  (START_NUMBER..END_NUMBER).each do |i|
    define_method(:"#{i.humanize}") do
      i
    end
  end

  OPERATORS.each do |operator, operator_symbol|
    define_method(:"#{operator}") do |num|
      "#{operator_symbol}#{num}"
    end
  end
end

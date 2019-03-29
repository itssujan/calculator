require 'humanize'

# Calculator can be used to perform different arthimetic operations on numbers
# There must be a function for each number from 0 ('zero') to 9 ('nine')
# There must be a function for each of the following mathematical operations: plus, minus, times, divided_by
# Each calculation consist of exactly one operation and two numbers
# The most outer function represents the left operand, the most inner function represents the right operand
# six(times(five)) # must return 30
# one(plus(nine)) # must return 10
# six(minus(three)) # must return 3
# eight(divided_by(two)) # must return 4
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

require './stack.rb'

# Do not use a ruby array!  Add your list class instead

class RPNCalculator

  # Parse should return a list class that you defined, not a ruby array
  # use split to return array

  def self.parse(rpn_string)
    new_list = rpn_string.split(" ")
    return new_list
  end

  def self.evaluate(rpn_list)
    # fill in code
  end

  def self.is_operation(operation)
    if ["-", "/", "*", "+", "^"].include?(operation)
      return true
    else
      return false
    end
  end

  def self.is_number(num)
    if num.match(/[-]?\d+/)
      return true
    else
      return false
    end
  end
end

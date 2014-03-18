# The stack should be implemented using a linked list.
# Do not use any ruby arrays!!
class Node
    attr_accessor :value, :next, :previous
  def initialize(value)
    @value = value
    @next = nil
    @previous = nil
  end
end

class Stack
  attr_accessor :length

  def initialize
    @head = nil
    @tail = nil
    @length = 0
  end

  def push(value)
   if @head == nil
      @head = Node.new(value)
      @tail = @head
   else
      old_tail = @tail
      @tail = Node.new(value)
      old_tail.next = @tail
      @tail.previous = old_tail
   end
      @length += 1
  end

  # Returns the value that is popped off
  # or nil if none exists
  def pop
    if @length == 0
      return nil
    elsif @length == 1
      value = @head.value
      @head = nil
      @tail = nil
      @length = 0
      return value
    else
     value = @tail.value
     new_tail = @tail.previous
     @tail = nil
     @tail = new_tail
     @tail.next = nil
     @length -= 1
     return value
    end

  end


end


class Node
  # Node class containing the value of the element and the pointer to the next node
  attr_accessor :value, :next_node

  def initialize
    @value = nil
    @next_node = nil
  end
end

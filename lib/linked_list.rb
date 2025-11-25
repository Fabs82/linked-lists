require_relative "node"

# The class representing the full lists of nodes
class LinkedList
  attr_reader :size, :head, :tail

  def initialize
    @head = nil
    @tail = nil
    @size = 0
  end

  def append(value)
    # The method appends the new node at the end after traversing the entire list O(n)
    new_node = Node.new(value)
    # check if the list is empty. Add node as Head if it is
    if @head.nil?
      @head = new_node
    else
      # if NOT empty assugn HEAD to a variable
      current_value = @head
      # Traverse the list with a loop updateing the current_value (starting from HEAD) to the next_node until it points to nil
      # Rhen next_node is NIL list has been traversed completely and the loop ends
      current_value = current_value.next_node until current_value.next_node.nil?
      # Add the new node at the end of the list
      current_value.next_node = Node.new(value)
      # Update the TAIL variable (DEBUG to allow append and append_tail to be used together)
      @tail = current_value.next_node
    end
    # Increase the counter for the list size
    @size += 1
  end

  def append_tail(value)
    # Alternative method that appends the new node directly at the end O(1)
    new_node = Node.new(value)
    if @head.nil?
      @head = new_node
    else
      @tail.next_node = new_node
    end
    @tail = new_node
    @size += 1
  end

  def prepend(value)
    # The method appends a new node at the start of the list

    # Create a new Node that points to the current HEAD
    first_node = Node.new(value, @head)
    # Update the HEAD with the new node that points to the old Head
    @head = first_node
    # Increase the counter for the list size
    @size += 1
  end

  def return_tail
    # The method return the last node of the list (the head if the list has only one element)
    if @head.next_node.nil?
      @head
    else
      current_value = @head
      current_value = current_value.next_node until current_value.next_node.nil?
      current_value
    end
  end

  def return_head
    # if list is not empty return the Head node
    return if @head.nil?

    @head
  end

  def to_s
    # The method prints out the value of the list nodes in the form of a string
    string = ""
    current_value = @head
    while current_value
      string += "( #{current_value.value} ) -> "
      current_value = current_value.next_node
    end
    string + " nil "
  end
end

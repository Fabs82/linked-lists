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
      @tail = @head
    else
      # if NOT empty assugn HEAD to a variable
      current_node = @head
      # Traverse the list with a loop updateing the current_node (starting from HEAD) to the next_node until it points to nil
      # Rhen next_node is NIL list has been traversed completely and the loop ends
      current_node = current_node.next_node until current_node.next_node.nil?
      # Add the new node at the end of the list
      current_node.next_node = new_node
      # Update the TAIL variable (DEBUG to allow append and append_tail to be used together)
      @tail = current_node.next_node
    end
    # Increase the counter for the list size
    @size += 1
  end

  def append_tail(value)
    # Alternative and more efficient method that appends the new node directly at the end O(1)
    new_node = Node.new(value)
    if @head.nil?
      @head = new_node
    else
      @tail.next_node = new_node
    end
    @tail = new_node
    @size += 1
  end

  def pop
    # The method removes the last element of the list
    return nil if @head.nil?

    if @size == 1
      removed_node = @head
      @head = nil
      @tail = nil
    else
      current_node = @head
      current_node = current_node.next_node until current_node.next_node.next_node.nil?
      removed_node = current_node.next_node
      current_node.next_node = nil
      @tail = current_node
    end
    @size -= 1
    puts "#{removed_node} deleted"
    removed_node
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
    # The method return the last node of the list (the head if the list has only one element).
    # With ATTR READER the method is redundant
    if @head.next_node.nil?
      @head
    else
      current_node = @head
      current_node = current_node.next_node until current_node.next_node.nil?
      current_node
    end
  end

  def return_head
    # With ATTR READER the method is redundant
    # if list is not empty return the Head node
    return if @head.nil?

    @head
  end

  def at(index)
    # The method returns the node in a given position
    if @size.zero?
      puts "List is empty"
      nil
    elsif index >= @size
      puts "Search exceeds list size"
      nil
    else
      count = 0
      current_node = @head
      while count < index
        current_node = current_node.next_node
        count += 1
      end
      puts "#{current_node.value}"
      current_node
    end
  end

  def contains?(value)
    # The method search the list for a certain given value. Returns TRUE if found or FALSE if not found
    current_node = @head
    # traverse the list
    while current_node
      # check if node.value == value
      if current_node.value == value
        # if it is return true
        puts "Found"
        return true
      end
      # if the current_node is not the value and there are still elementsin the list, move to the next node
      current_node = current_node.next_node
    end
    # if not found return false
    puts "Not found"
    false
  end

  def find_index(value)
    # The method returns the index of the node containing the value or nil if not found

    # set a counter to 0
    count = 0
    current_node = @head
    # traverse the list
    while current_node
      # check if the node.value == value and if it is return the counter and end the loop
      return count if current_node.value == value

      # else advance in the list and increase counter
      current_node = current_node.next_node
      count += 1
    end
    # return nil if loop ends without finding the value
    nil
  end

  def insert_at(value, index)
    # The method inserts a new node with the provided value att the given index
    return prepend(value) if index.zero?

    count = 0
    current_node = @head
    while current_node
      if count == index - 1
        puts "insert - #{value} - at position #{index}"
        @size += 1
        return current_node.next_node = Node.new(value, current_node.next_node)
      end
      current_node = current_node.next_node
      count += 1
    end
    puts "Error: Index #{index} is out of bounds for insertion."
  end

  def remove_at(index)
    # The method removes the node at the given index
    if index.zero?
      @head = @head.next_node
      @size -= 1
      return
    end

    counter = 0
    current_node = @head

    while current_node
      if counter == index - 1
        @size -= 1
        return current_node.next_node = current_node.next_node.next_node
      end
      current_node = current_node.next_node
      counter += 1
    end
    puts "Error: Index #{index} is out of bounds for deletion."
  end

  def to_s
    # The method prints out the value of the list nodes in the form of a string
    string = ""
    current_node = @head
    while current_node
      string += "( #{current_node.value} ) -> "
      current_node = current_node.next_node
    end
    string + "[ nil ]"
  end
end

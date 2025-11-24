require_relative "node"

# The class representing the full lists of nodes
class LinkedList
  def initialize
    @head = nil
    @size = 0
  end

  def append(value)
    # controlla se la lista é vuota e aggiunge il Node come head se lo é
    if @head.nil?
      @head = Node.new(value)
    else
      # se non lo e' assegna il current value al primo Nodo della lista
      current_value = @head
      # Contina ad avanzare nella lista fino a quando il next_node non é vuoto (fine della lista)
      current_value = current_value.next_node until current_value.next_node.nil?
      # Fine del loop quando si arriva alla fine della lista.
      # Aggiunge il nuovo nodo alla fine della lista
      current_value.next_node = Node.new(value)
    end
    # aumenta il counter per il check delle dimensioni della lista
    @size += 1
  end

  def prepend(value)
    first_node = Node.new(value, @head)
    @head = first_node
    @size += 1
  end

  def to_s
    string = ""
    current_value = @head
    while current_value
      string += "( #{current_value.value} ) -> "
      current_value = current_value.next_node
    end
    string + " nil "
  end

  def size
    puts "Size of the list is #{@size}"
  end
end

require_relative "./lib/linked_list"

list = LinkedList.new
# adds a new Node at the end traversing the entire list
list.append("wolf")
list.append_tail("fox")
list.prepend("deer")
puts list.size
puts list

list.pop
list.pop
list.pop
list.append_tail("John")
list.append("Fabs")
list.append_tail("Taylor")
list.prepend("Lafayette")

list.insert_at("Gianni", 3)
puts list

require_relative "./lib/linked_list"

list = LinkedList.new
# adds a new Node at the end traversing the entire list
list.append("cat")
# adds a new Node at the start of the list
list.prepend("HEAD")
# returns the first node in the list
puts list.head.value
list.append("fox")
list.append("deer")
list.append("TAIL")
# returns the last node in the list
puts list.tail.value
# adds a new Node directly at the end of the list
list.append_tail("TAIL 2")
# returns the number of elements in the list
puts list.size
# removes the last element of the list
list.pop
puts list.size
list.append_tail("TAIL 3")
puts list.size
# returns the node in a given position of the list
puts list.at(1)
# returns TRUE if value is in the list else FALSE
list.contains?("TAIL")
# returns the index of teh value if in the list else NIL
p list.find_index("deer")
# inserts the Node at a specific index
list.insert_at("bobcat", 0)
puts list
puts list.size
# removes the Node at a specific index
list.remove_at(0)
puts list
puts list.size

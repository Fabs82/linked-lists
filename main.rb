require_relative "./lib/linked_list"

list = LinkedList.new
list.append("HEAD")
list.append("cat")
list.append("fox")
list.append("deer")
list.append("TAIL")
list.append_tail("TAIL 2")

puts list

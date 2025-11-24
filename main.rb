require_relative "./lib/linked_list"

list = LinkedList.new

list.append("dog")
list.append("cat")
list.append("deer")
list.append("fox")
list.prepend("lion")
list.size

puts list

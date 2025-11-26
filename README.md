Ruby Linked List

A custom implementation of a Singly Linked List data structure written in Ruby. This project demonstrates how to manage memory dynamically by linking nodes together, allowing for efficient insertion and deletion operations.

📂 Project Structure

The project consists of three main files:

lib/node.rb: Defines the Node class, containing the value and a pointer to the next_node.
lib/linked_list.rb: Defines the LinkedList class, which manages the head, tail, and various operations on the list.
main.rb: A driver script used to test and demonstrate the functionality of the list.

🚀 Features

This Linked List implementation supports the following operations:
# list.append(item)
Add to the end (Traversing 0(n))
# list.prepend(item)
Add to the start
# list.append_tail(item)
Optimized add to end (Using Tail pointer O(1))
# list.to_s
Print the list of nodes
# list.at(number)
Get node at specific index
# list.contains?(item)
Check if value exists
# list.find_index(item)
Find index of a value
# list.insert_at(item, number)
Insert at specific index
# list.remove_at(number)
Remove from specific index
# list.pop
Remove the last element

This project was created as part of The Odin Project Ruby Path.
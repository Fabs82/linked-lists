Ruby Linked List

A custom implementation of a Singly Linked List data structure written in Ruby. This project demonstrates how to manage memory dynamically by linking nodes together, allowing for efficient insertion and deletion operations.

📂 Project Structure

The project consists of three main files:

lib/node.rb: Defines the Node class, containing the value and a pointer to the next_node.
lib/linked_list.rb: Defines the LinkedList class, which manages the head, tail, and various operations on the list.
main.rb: A driver script used to test and demonstrate the functionality of the list.

🚀 Features

This Linked List implementation supports the following operations:

# Add to the end (Traversing)
list.append(item)
list.append(item)

# Add to the start
list.prepend(item)

# Optimized add to end (Using Tail pointer)
list.append_tail(item)

# Print the list of nodes
list.to_s

# Get node at specific index
list.at(number)

# Check if value exists
list.contains?(item)  

# Find index of a value
list.find_index(item)

# Insert at specific index
list.insert_at(item, number) 

# Remove from specific index
list.remove_at(number) 

# Remove the last element
list.pop

🧠 Implementation Details
Node Class
The basic building block of the list. It holds: @value: The data stored in the node. @next_node: A link/pointer to the next node in the sequence.

This implementation tracks both the @head and the @tail.
Standard Append: The append method traverses the entire list to find the end, making it O(n).
Optimized Append: The append_tail method utilizes the @tail pointer to add directly to the end, making it O(1).

This project was created as part of The Odin Project Ruby Path.
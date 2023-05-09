require_relative './node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def search_with_index index

    current_index = 0

    current_node = self.head

    until current_index == index
      current_node = current_node.next_node
      current_index+= 1
    end

    current_node.value
  end

  def nth_from_end(n)

    if !self.head || n < 1
      return nil
    end


    last_node = self.head

    length = 1

    # find index of final item

    while last_node.next_node
      last_node = last_node.next_node
      length += 1
    end

    if n > length
      return nil
    end

    # subtract length from n index
    index = length - n 

    search_with_index(index)

  end

end

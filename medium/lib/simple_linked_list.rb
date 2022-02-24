class Element
  attr_accessor :next_el
  def initialize(int, next_el = nil)
    @datum = int
    @next_el = next_el
  end

  def datum
    @datum
  end

  def tail?
    !next_el
  end

  def next
    next_el
  end
end

class SimpleLinkedList

  def self.from_a(arr)
    list = SimpleLinkedList.new
    return list if arr.nil?
    arr.reverse.each{|el|list.push(el)}
    list
  end

  def initialize
    @head = nil
    @tail = nil
  end

  def size
    return 0 if @head.nil?
    count = 0
    pointer = @head
    loop do
      count += 1
      break if pointer == @tail
      pointer = pointer.next_el
      
    end
    count
  end

  def empty?
    size == 0
  end

  def push(el)
    if @head.nil?
      @head = Element.new(el)
      @tail = @head
    else
      tmp = Element.new(el)
      tmp.next_el = @head
      @head = tmp
    end
  end

  def peek
    return nil if empty?
    @head.datum
  end

  def head
    @head
  end

  def pop
   if size == 1
    popped = @head
    @head = nil
    popped.datum
   else
    popped = @head
    @head = @head.next_el
    popped
  end

  end

  def to_a
    arr = []
    head = @head
    until head.nil?
      arr << head.datum
      head = head.next_el
    end
    arr
  end

  def reverse
    head = @head
    list = SimpleLinkedList.new
    until head.nil?
      list.push(head.datum)
      head = head.next_el
    end
    list
  end

end


# list = SimpleLinkedList.from_a([1, 2])

# p list
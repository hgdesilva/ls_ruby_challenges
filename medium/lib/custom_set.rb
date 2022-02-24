class CustomSet
  
  def initialize(arr = [])
    @set = arr.uniq.sort
  end

  def set
    @set.uniq.sort
  end

  def empty?
    @set.empty?
  end

  def contains?(el)
    @set.include?(el)
  end

  def subset?(other)
    return true if empty?
    sub = true
    set.each do |el|
      sub = false unless other.set.include?(el)
    end
    sub
  end

  def disjoint?(other)
    return true if other.set.empty?
    set.each do |el|
      return false if other.set.include?(el)
    end
   true
  end

  def eql?(other)
    set == other.set
  end

  def add(el)
    @set << el unless @set.include?(el)
    self
  end

  def ==(other)
    set == other.set
  end

  def intersection(other)
    set.each_with_object(CustomSet.new) do |el, acc|
      acc.add(el) if other.set.include?(el)
    end
  end

  def difference(other)
    new_set = set - other.set
    new_set.each_with_object(CustomSet.new) do |el, acc|
      acc.add(el)
    end
  end

  def union(other)
    new_set = (set + other.set).uniq
    new_set.each_with_object(CustomSet.new) do |el, acc|
      acc.add(el)
    end
  end
end


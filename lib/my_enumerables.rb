module Enumerable
  # Your code goes here
  def my_all? 
    self.my_each do |elem|
      return false unless yield(elem)
    end
    true
  end

  def my_any?
    self.my_each do |elem|
      return true if yield(elem)
    end
    false
  end

  def my_none?
    self.my_each do |elem|
      return false unless !yield(elem)
    end
    true
  end

  def my_count
    return self.length unless block_given?

    count = 0
    self.each do |elem|
      if yield(elem)
        count = count + 1
      end
    end
    count
  end

  def my_inject(initial_value = nil)
    array = to_a

    if initial_value.nil?
      sum = array[0]
      array[1..-1].my_each { |elem| sum = yield(sum, elem)}
    else
      sum = initial_value
      array.my_each { |elem| sum = yield(sum, elem)} 
    end
    sum 
  end

  def my_map
    return to_enum(:my_map) unless block_given?

    result = []
    self.my_each do |elem|
      result << yield(elem)
    end
    result
  end

  def my_select 
    matches = []

    self.my_each do |elem|
      matches << elem if yield(elem)
    end
    matches
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    return to_enum(:my_each) unless block_given?

    for i in 0...self.length
      yield(self[i])
    end 
    self
  end

  def my_each_with_index
    return to_enum(:my_each) unless block_given?

    for i in 0...self.length
      yield(self[i], i)
    end
    self
  end
end

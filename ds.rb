require 'set'

class DataStructures
  attr_accessor :array, :hash, :set, :range

  def initialize
    @array = Array.new
    @hash = Hash.new
    @set = Set.new
    @range = nil
  end

  def add_element_to_array(element)
    # @array.push(element)
    @array << element
  end

  def add_element_to_hash(key, value)
    @hash[key] = value
  end

  def add_element_to_set(element)
    @set.add(element)
  end

  def set_new_range(start, ending, exclusive=false)
    @range = exclusive ? (start...ending) : (start..ending)
  end

  def add_element_to_range(element)
    @range << element
  end

  def display_structures
    puts "Array elements: #{@array.inspect}"
    puts "Hash elements: #{@hash.inspect}"
    puts "Set elements: #{@set.inspect}"
    puts "Range elements: #{@range.inspect}"
  end
end


dsObject = DataStructures.new

dsObject.add_element_to_array(1)

dsObject.add_element_to_hash('key', 'value')
dsObject.add_element_to_hash('key2', 'value2')


dsObject.add_element_to_set(1)
dsObject.add_element_to_set(2)
dsObject.add_element_to_set(3)


dsObject.set_new_range(1, 10, true)

dsObject.display_structures




puts [1, 2, 3, 4, 5, 6].reduce(0) { |sum, n| sum + n }

puts [1, 2, 3, 4, 5, 6].reduce(1) { |product, n| product * n }

puts [1, 2, 3, 4, 5, 6].reduce(:+)


class NewCollection
  include Enumerable

  def initialize(collection)
    @collection = collection
  end

  def each(&block)
    @collection.each(&block)
  end
end

custom = NewCollection.new([1, 2, 3, 4])
puts custom.reduce(:+)
module MyEnumerable
  def all?
    true unless block_given?

    each { |n| return false unless yield n }
    true
  end

  def any?
    true unless block_given?

    each { |n| return true if yield n }
    false
  end

  def filter
    elements = []
    each { |n| elements.push(n) if yield n }
    elements
  end
end

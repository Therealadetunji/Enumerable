require_relative 'my_enumerables'

class MyList
  include MyEnumerable
  def initialize(*list)
    @list = list
  end

  def each(&param)
    @list.each(&param)
  end
end

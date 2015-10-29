
class Player
  attr_accessor :name, :budget

  def initialize(name)
    @name = name
    @budget = 2000
  end
  def list_propery

  end
end

# ------------------------

class Property
  attr_accessor :name, :price, :revenue, :owner, :set_size

  def initialize(name, price, revenue, set_size)
    @name = name
    @price = price
    @revenue = revenue
    @set_size = set_size
    @owner = 'vacant'
  end
end

# ------------------------

    class Street < Property
      attr_accessor :town, :color

      def initialize(name, price, revenue, set_size, town, color)
        @town = town
        @color = color
        super(name, price, revenue, set_size)
      end
      def rent(set)
        if set == set_size
          return @revenue * 2
        else
          return @revenue
        end
      end
    end


# ------------------------

  class Utility < Property
    def initialize(name)
      @price = 100
      @revenue = 25
      @set_size = 2
      super(name, @price, @revenue, @set_size)
    end
    def rent(set)
      if set == set_size
        return @revenue * 10
      else
        return @revenue * 4
      end
    end

  end


# ------------------------

  class Station < Property
      def initialize(name)
        @price = 200
        @revenue = 25
        @set_size = 4
        super(name, @price, @revenue, @set_size)
      end
      def rent(set)
        return @revenue * (2**(set - 1))
      end
  end
  #---

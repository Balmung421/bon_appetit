require 'pry'

class Pantry

  attr_reader :stock

  def initialize
    @stock = {}
  end

  def stock_check(item)
    count = @stock[item]
      if count == nil
        count = 0
      end
      count
  end

  def restock(item, amount)
    if @stock.has_key?(item)
      @stock[item] = @stock[item] + amount
    elsif item.class != String
      nil
    else
      @stock[item] = amount
    end
  end

end

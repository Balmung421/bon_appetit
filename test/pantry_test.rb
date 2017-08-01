require './lib/pantry'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class PantryTest < Minitest::Test

  def test_it_exists
    pantry = Pantry.new
    assert_instance_of Pantry, pantry
  end

  def test_for_stock_is_empty_hash_by_default
    pantry = Pantry.new
    expected = {}
    assert_equal expected, pantry.stock
  end

  def test_for_stock_check
    pantry = Pantry.new
    expected = 0
    assert_equal expected, pantry.stock_check("Cheese")
  end

  def test_for_restock
    pantry = Pantry.new
    expected = 10
    assert_equal expected, pantry.restock("Cheese", 10)
  end

end

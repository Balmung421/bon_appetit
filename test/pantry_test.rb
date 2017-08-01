require './lib/pantry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/recipe'
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
    assert_equal expected, pantry.stock_check("Cheese")
  end

  def test_for_adding_to_restock
    pantry = Pantry.new
    expected = 30
    pantry.restock("Cheese", 10)
    pantry.restock("Cheese", 20)
    assert_equal expected, pantry.stock_check("Cheese")
  end

  def test_for_recipe_build_per_spec
    r = Recipe.new("Spicy Cheese Pizza")
    r.add_ingredient("Cayenne Pepper", 0.025)
    r.add_ingredient("Cheese", 75)
    r.add_ingredient("Flour", 500)
    pantry = Pantry.new
    assert_instance_of Pantry, pantry
    assert_instance_of Recipe, r
  end

end

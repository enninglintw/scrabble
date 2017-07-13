require "minitest/autorun"

class TestScrabble < Minitest::Test
  def setup
    @game = Scrabble.new
  end

  def test_hello
    assert_equal 8, @game.score("hello")
  end

  def test_cabbage
    assert_equal 14, @game.score("cabbage")
  end

  def test_empty
    assert_equal 0, @game.score("")
  end

  def test_nil
    assert_equal 0, @game.score(nil)
  end
end

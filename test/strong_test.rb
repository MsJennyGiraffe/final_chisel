require 'minitest/autorun'
require_relative '../lib/header'

class HeaderTest < Minitest::Test
  def setup
    @strong = Strong.new
  end

  def test_creates_opening_and_closing_strong_tags
    assert_equal "This is <strong>pretty</strong> cool", @strong.make_strong("This is **pretty** cool")
  end

end

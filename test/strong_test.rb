#3 runs, 3 assertions, 0 failures, 0 errors, 0 skips
#is there anything else should I be testing for in unit testing?

require 'minitest/autorun'
require_relative '../lib/strong'

class HeaderTest < Minitest::Test
  def setup
    @strong = Strong.new
  end

  def test_creates_opening_and_closing_strong_tags
    assert_equal "This is <strong>pretty</strong> cool", @strong.make_strong("This is **pretty** cool")
  end

  def test_will_create_multiples_at_once
    assert_equal "This <strong>is</strong> <strong>pretty</strong> cool", @strong.make_strong("This **is** **pretty** cool")
  end

  def test_will_not_do_anything_if_only_one_asteric_is_present
    assert_equal "*This* is not strong", @strong.make_strong("*This* is not strong")
  end
end

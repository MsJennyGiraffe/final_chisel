#2 runs, 2 assertions, 0 failures, 0 errors, 0 skips

require 'minitest/autorun'
require_relative '../lib/emphasis'

class EmphasisTest < Minitest::Test
  def setup
    @emphasis = Emphasis.new
  end

  def test_will_replace_singular_asterics_with_emphasis_tags
    assert_equal "So much <em>emphasis</em>", @emphasis.make_emphasis("So much *emphasis*")
  end

  def test_can_replace_multiples_at_a_time
    assert_equal "Even <em>more</em> <em>emphasis</em>", @emphasis.make_emphasis("Even *more* *emphasis*")
  end

end

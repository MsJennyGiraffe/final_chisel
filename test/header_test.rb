#7 runs, 7 assertions, 0 failures, 0 errors, 0 skips

require 'minitest/autorun'
require_relative '../lib/header'

class HeaderTest < Minitest::Test
  def setup
    @header = Header.new
  end

  def test_converts_an_octotropes_into_header_tags
    assert_equal "<h1>Headers are fun!</h1>", @header.headers("#Headers are fun!")
  end

  def test_converts_two_octotropes_into_header_tags
    assert_equal "<h2>Headers are fun!</h2>", @header.headers("##Headers are fun!")
  end

  def test_converts_three_octotropes_into_header_tags
    assert_equal "<h3>Headers are fun!</h3>", @header.headers("###Headers are fun!")
  end

  def test_converts_four_octotropes_into_header_tags
    assert_equal "<h4>Headers are fun!</h4>", @header.headers("####Headers are fun!")
  end

  def test_converts_five_octotropes_into_header_tags
    assert_equal "<h5>Headers are fun!</h5>", @header.headers("#####Headers are fun!")
  end

  def test_converts_six_octotropes_into_header_tags
    assert_equal "<h6>Headers are fun!</h6>", @header.headers("######Headers are fun!")
  end

  def test_will_convert_octothropes_mid_sentence
    assert_equal "Headers #are fun", @header.headers("Headers #are fun")
  end
end

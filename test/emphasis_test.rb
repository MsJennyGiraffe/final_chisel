require 'minitest/autorun'
require_relative '../lib/emphasis'

class EmphasisTest < Minitest::Test
  def setup
    @emphasis = Emphasis.new
  end

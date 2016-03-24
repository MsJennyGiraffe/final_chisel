require 'minitest/autorun'
require_relative '../lib/paragraph'

class EmphasisTest < Minitest::Test
  def setup
    @paragraph = Paragraph.new
  end
end

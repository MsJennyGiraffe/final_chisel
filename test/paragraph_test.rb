#5 runs, 5 assertions, 0 failures, 0 errors, 0 skips

require 'minitest/autorun'
require_relative '../lib/paragraph'

class EmphasisTest < Minitest::Test
  def setup
    @paragraph = Paragraph.new
  end

  def test_paragraph_tags_are_placed_around_lines_of_content
    assert_equal "<p>This is a paragraph</p>", @paragraph.format_paragraphs("This is a paragraph")
  end

  def test_paragraph_tags_are_not_placed_when_there_list_tags
    assert_equal "<ul> This is not a paragraph </ul>", @paragraph.format_paragraphs("<ul> This is not a paragraph </ul>")
  end

  def test_paragraph_tags_are_not_placed_when_there_are_header_tags
    assert_equal "<h1>This is a header, not a paragraph.</h1>", @paragraph.format_paragraphs("<h1>This is a header, not a paragraph.</h1>")
  end

  def test_paragraph_tags_are_placed_when_there_are_strong_tags
    assert_equal "<p><strong>This is so strong</strong></p>", @paragraph.format_paragraphs("<strong>This is so strong</strong>")
  end

  def test_paragraph_tags_are_placed_when_there_are_emphasis_tags
    assert_equal "<p><em>There is so much emphasis</em></p>", @paragraph.format_paragraphs("<em>There is so much emphasis</em>")
  end

end

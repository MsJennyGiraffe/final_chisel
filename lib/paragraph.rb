#responsible for:
  #creating <p></p> paragraph tags around all content
    #EXCEPT where there are header or list tags

#information needed:
  #contents from markdown file

class Paragraph

  def format_paragraphs(line)
    if line.start_with?("<em>")
      "<p>#{line}</p>"
    elsif line.start_with?("<strong>")
      "<p>#{line}</p>"
    elsif !line.start_with?("<")
      "<p>#{line}</p>"
    else
      line
    end
  end
end

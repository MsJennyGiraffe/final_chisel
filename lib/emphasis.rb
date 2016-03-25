#responsible for:
  #finding "*" and replacing them into <em></em> tags

#information needed:
  #contents from markdown file

class Emphasis
  def make_emphasis(line)
    count = 0
    while line.include?("*")
      if count.even?
        line = line.sub("*", "<em>")
      else
        line = line.sub("*", "</em>")
      end
      count += 1
    end
    line
  end

end

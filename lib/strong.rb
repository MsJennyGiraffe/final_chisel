#responsible for:
  #turing "**" strong into <strong></strong> strong tags

  #information needed:
    #contents from markdown file
class Strong
  def make_strong(line)
    count = 0
    while line.include?("**")
      if count.even?
        line = line.sub("**", "<strong>")
      else
        line = line.sub("**", "</strong>")
      end
      count += 1
    end
    line
  end
end

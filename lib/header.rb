#responsible for:
  #finding octothropes and replacing them into <h1-6></h1-6> tags

#information needed:
  #contents from markdown file

class Header
  def headers(line)
    count = line.count("#")
    if count > 0 && line.start_with?("#")
      line = line.sub("#" * count, "<h#{count}>")
      "#{line}</h#{count}>"
    else
      line
    end
  end

end

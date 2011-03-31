module ApplicationHelper
  # Indents the html of each comment by 1 tab per depth of nesting
  def indented_render(num, *args)
    render(*args).gsub(/^/, "\t" * num)
  end
end

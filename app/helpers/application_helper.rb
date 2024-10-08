module ApplicationHelper
  def sort_direction(column)
    if params[:sort] == column
      params[:direction] == "desc" ? "asc" : "desc"
    end
  end

  def sort_icon(direction)
    if direction == nil
      svg_icon("M7.776 5.553a.5.5 0 0 1 .448 0l6 3a.5.5 0 1 1-.448.894L8 6.56 2.224 9.447a.5.5 0 1 1-.448-.894z")
    else
      direction == "asc" ?
        svg_icon("M7.776 5.553a.5.5 0 0 1 .448 0l6 3a.5.5 0 1 1-.448.894L8 6.56 2.224 9.447a.5.5 0 1 1-.448-.894z") :
        svg_icon("M1.553 6.776a.5.5 0 0 1 .67-.223L8 9.44l5.776-2.888a.5.5 0 1 1 .448.894l-6 3a.5.5 0 0 1-.448 0l-6-3a.5.5 0 0 1-.223-.67")
    end
  end

  def svg_icon(path_d)
    <<-SVG.html_safe
    <svg xmlns="http://www.w3.org/2000/svg" width="10" height="10" fill="currentColor" viewBox="0 0 16 16">
      <path fill-rule="evenodd" d="#{path_d}" />
    </svg>
    SVG
  end

end

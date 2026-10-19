module MoviesHelper
  def sortable_header(label, column)
    active = @sort == column
    next_direction = active && @direction == "asc" ? "desc" : "asc"

    indicator =
      if active
        @direction == "asc" ? " ▲" : " ▼"
      else
        ""
      end

    css_class = active ? "sorted #{@direction}" : nil

    aria_sort =
      if active
        @direction == "asc" ? "ascending" : "descending"
      else
        "none"
      end

    tag.th(class: css_class, aria: { sort: aria_sort }) do
      link_to "#{label}#{indicator}",
              movies_path(sort: column, direction: next_direction)
    end
  end
end
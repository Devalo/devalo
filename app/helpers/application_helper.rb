module ApplicationHelper

    # Returnerer basic tittel
  def full_title (page_title = "")
    base_title = "Devalo - Fremtiden ligger på nettet"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
end

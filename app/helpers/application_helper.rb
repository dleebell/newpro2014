module ApplicationHelper
end
def full_title(page_title)
base_title="Ruby on the rails tutorial sample app"
if page_title.empty?
base_title
else
"#{base_title}|#{page_title}"
end
end
end
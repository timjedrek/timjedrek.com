module ApplicationHelper
  def random_title_text
    titles = [
      "Grow your online presence!",
      "Solutions to modernize your business!",
      "Get your business on the internet",
      "Custom web applications mobile friendly",
      "Create a web presence and increase sale volume"
    ]
    titles[rand(titles.size)]
  end
end

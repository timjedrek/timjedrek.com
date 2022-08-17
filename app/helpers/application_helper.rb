module ApplicationHelper
  def random_title_text
    titles = [
      "Grow your online presence!",
      "Solutions to modernize your business!",
      "Get your business on the internet",
      "Custom web applications mobile friendly",
      "Create a web presence and increase sales volume"
    ]
    titles[rand(titles.size)]
  end

  def sentence_generator
    sentences = [
      {
        id: 1,
        sentence: "You can lead a horse to ?????, but you can't make him drink.",
        answer: "water"
      },
      {
        id: 2,
        sentence: "You can catch more flies with ????? than you can with vinegar.",
        answer: "honey"
      },
      {
        id: 3,
        sentence: "An ????? a day keeps the doctor away.",
        answer: "apple"
      },
      {
        id: 4,
        sentence: "The best thing since sliced ?????.",
        answer: "bread"
      }
    ]
    random_key = rand(sentences.size)
    array_key = sentences[random_key]
    array_key[:sentence]
  end
end

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

  # Needs to match number of sentences
  def random_number
    rand(10)
  end

  # 10 sentences total as of right now...
  def sentence_storage
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
      },
      {
        id: 5,
        sentence: "Every ????? has a silver lining.",
        answer: "cloud"
      },
      {
        id: 6,
        sentence: "Time ????? when you're having fun.",
        answer: "flies"
      },
      {
        id: 7,
        sentence: "No pain, no ????.",
        answer: "gain"
      },
      {
        id: 8,
        sentence: "A ??????? is worth 1000 words.",
        answer: "picture"
      },
      {
        id: 9,
        sentence: "Kill two birds with one ?????.",
        answer: "stone"
      },
      {
        id: 10,
        sentence: "The ????? bird gets the worm.",
        answer: "early"
      }
    ]
    sentences
  end

  def sentence_generator(input)
    array_key = sentence_storage[input]
    array_key[:sentence]
  end

  def answer_check(input)
    answer_key = sentence_storage[input]
    answer_key[:answer]
  end
end

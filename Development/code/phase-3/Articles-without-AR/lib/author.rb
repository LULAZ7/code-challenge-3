require 'pry'

require_relative './articles'
class Author
    attr_reader :name

    def initialize(name)
      @name = name
      @articles = []
    end

    def add_article(magazine, title)
      article = Article.new(self, magazine, title)
      @articles << article
      magazine.add_article(article)
    end

    def articles
      @articles.dup.freeze
    end

    def magazines
      @articles.map { |article| article.magazine }.uniq
    end

    def topic_areas
      magazines.map { |magazine| magazine.category }.uniq
    end
  end

  # create some authors
#author1 = Author.new("Sam Wanjiku")
#author2 = Author.new("John doe")

  binding.pry
require 'pry'

class Magazine

    attr_reader :name, :category

    @@all = []

    def initialize(name, category)
        @name = name
        @category = category
        @articles = []
        @@all << self
    end
    
    def self.all
        @@all.dup.freeze
    end

    def add_article(article)
        @articles << article
    end

    def article_titles
        @articles.map { |article| article.title}
    end

    def contributing_authors
        @articles.group_by { |article| article.author }
                 .select { |author, articles| articles.length > 2 }
                 .keys
    end    

    def self.find_by_name(name)
        @@all.find { |magazine| magazine.name == name }
      end
end
#create some authors
author1 = Author.new("J.K. Rowling")
author2 = Author.new("Stephen King")


# create some magazines
magazine1 = Magazine.new("Time", "News")
magazine2 = Magazine.new("National Geographic", "Science")

# add some articles
author1.add_article(magazine1, "The Power of Imagination")
author1.add_article(magazine2, "The Science of Magic")
author2.add_article(magazine1, "The Art of Horror")
author2.add_article(magazine1, "The Psychology of Fear")

# print some information
puts author1.name
puts author1.articles.length
puts author1.magazines.map { |magazine| magazine.name }
puts author1.topic_areas
puts magazine1.name
puts magazine1.article_titles
puts magazine1.contributing_authors.map { |author| author.name }
puts Magazine.find_by_name("National Geographic").category

binding.pry
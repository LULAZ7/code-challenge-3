class Article

    attr_reader :name, :category
    attr_reader :author, :magazine, :title
    @@all = []

    def initialize(name, category)
        @name = name
        @category = category
        @articles = articles
        @@all << self
    end

    def initialize(author, magazine, title)
        @author = author
        @magazine = magazine
        @title= title
        @@all << self
    end
end
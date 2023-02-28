class Article

    attr_reader :name, :category
    @@all = []

    def initialize(name, category)
        @name = name
        @category = category
        @articles = articles
        @@all << self
    end
end
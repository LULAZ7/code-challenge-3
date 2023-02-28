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
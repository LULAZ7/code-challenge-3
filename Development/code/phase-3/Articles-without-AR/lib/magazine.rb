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
end
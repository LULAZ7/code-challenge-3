require 'pry'

reuire_relative ''

class Article

    attr_reader :name, :category
    attr_reader :author, :magazine, :title
    @@all = []

    
        def initialize(author, magazine, title)
        @author = author
        @magazine = magazine
        @title= title
        @@all << self
    end

    def self.all
        @@all.dup.freeze
    end
end


new1 = Article.new("sam", "vogue", "fashion")
new2= Article.new("anny", "voque", "Gossip")
new3= Article.new("John", "voque", "Entertainment")

binding.pry
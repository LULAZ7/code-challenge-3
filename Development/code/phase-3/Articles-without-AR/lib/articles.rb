require 'pry'

reuire_relative ''

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

    def self.all
        @@all.dup.freeze
    end
end

author1.add_article(magazine1, "The Power of Imagination")
author1.add_article(magazine2, "The Science of Magic")
author2.add_article(magazine1, "The Art of Horror")
author2.add_article(magazine1, "The Psychology of Fear")

binding.pry
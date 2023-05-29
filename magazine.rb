class Magazine

    attr_accessor :name, :category, :contributors
    @@all = []

    def initialize(name, category)
        @name = name
        @category = category
        @contributing_authors = []
        @@all << self
    end

    def self.all
        @@all 
    end

    def contributors
        Article.all.map do |article| article.author end.uniq
    end

end


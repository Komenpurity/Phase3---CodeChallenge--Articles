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

    def find_by_name(name)
        Magazine.all.find do |magazine| magazine.name end
    end 

    def article_titles
        Articles.all.filter do |article| article.magazine end 
    end

end


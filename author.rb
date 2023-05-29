class Author
    attr_reader :name
    @@all = []

    def initialize(name)
      @name = name
      @@all << self
    end

    def self.all
        @@all
    end

    def articles
        Article.all.select do |article| article.author end
    end

    def magazines
        magazine = Article.all.map do |article| article.magazine end
        magazine.uniq 
    end

    def add_article(magazine, title)
        Article.new(self, magazine, title)
    end

    def topic_areas
       Magazine.all.map do |magazine| magazine.category end.uniq
    end
      
  end
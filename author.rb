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
  end
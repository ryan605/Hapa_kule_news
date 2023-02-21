class Author

    attr_reader :name

    #attr_accessor :articles

    def initialize(name)
        @name=name
        @articles=[]
        
    end

    def get_articles
        @articles
    end

    def magazines
        @articles.map{|magazine|magazine.name==name}.uniq
    end
    
    def add_article(magazine,title)
        article=Article.new(self,magazine,title)
        @articles << article
        magazine.add_contributors(self)
    end

    def topic_areas
        magazines.map(&:category).uniq
    end

end

#puts author.name

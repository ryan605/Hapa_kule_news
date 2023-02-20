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
        @articles.map{|magazine|magazine.name==name}.unique
    end
    
    def add_articles(magazine,title)
        article=Article.new(self,magazine,title)
        @articles << article
       #magazine.add_articles
    end

end
author = Author.new("Jane Austen")
puts author.name

class Magazine



    attr_accessor :name, :category

    @@all = []

    def initialize(name,category)
        @name=name
        @category=category
        @@all << self
        @contributors=[]
    end
    
    def contributors
        @contributors
    end


    def add_contributors(author)
       @contributors=author 
    end

    def self.find_by_name(name)
        all.find{|x|x.name==name}
    end

    def article_titles
        Article.all.select {|article| article.magazine == self}.map {|article| article.title}
    end

    def contributing_authors
        Article.all.select {|article| article.magazine == self}
        .map {|article|article.author}
        .group_by(&:itself)
        .select {|_,author| author.length > 2}
        .keys
    end

end
#magazine = Magazine.new("Harry Potter","Fiction")
#puts magazine.name
#puts magazine.category

#Magazine.new("National Geographic", "Science and Nature")
#Magazine.new("Time", "Current Events")
#Magazine.new("Vogue", "Fashion")

#all_magazines = Magazine.all
#all_magazines.each do |magazine|
#puts "#{magazine.name} - #{magazine.category}"

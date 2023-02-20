class Magazine

    @@all = []

    attr_accessor :name, :category

    def initialize(name,category)
        @name=name
        @category=category
        @@all << self
        @contributors=[]
    end
    
    def self.all
        @@all
    end

    def contributors(authors)
        @contributors
    end

end
magazine = Magazine.new("Harry Potter","Fiction")
puts magazine.name
puts magazine.category

Magazine.new("National Geographic", "Science and Nature")
Magazine.new("Time", "Current Events")
Magazine.new("Vogue", "Fashion")

all_magazines = Magazine.all
all_magazines.each do |magazine|
puts "#{magazine.name} - #{magazine.category}"
end
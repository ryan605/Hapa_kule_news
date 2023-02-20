class Magazine

    @@all = []

    attr_accessor :name, :category

    def initialize(name,category)
        @name=name
        @category=category
        @@all << self
    end
    
    def get_name
        @name
    end

    def set_name
        @name=name
    end

    def get_category
        @category
    end

    def set_category
        @category = category
    end

    def self.all
        @@all
    end

end
magazine = Magazine.new("Harry Potter","Fiction")
puts magazine.name
puts magazine.category
magazine.set_name
magazine.set_category
puts magazine.set_name
puts magazine.set_category

Magazine.new("National Geographic", "Science and Nature")
Magazine.new("Time", "Current Events")
Magazine.new("Vogue", "Fashion")

all_magazines = Magazine.all
all_magazines.each do |magazine|
puts "#{magazine.name} - #{magazine.category}"
end
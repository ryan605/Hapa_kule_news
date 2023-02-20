class Author

    attr_accessor :name

    def initialize(name)
        @name=name
    end
    
    def name
        @name
    end

author = Author.new("Jane Austen")
puts author.name
end

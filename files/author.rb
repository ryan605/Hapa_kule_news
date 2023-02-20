class Author

    attr_reader :name

    def initialize(name)
        @name=name
    end
    
author = Author.new("Jane Austen")
puts author.name
end

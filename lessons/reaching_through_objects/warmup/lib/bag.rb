require './lib/candy'

class Bag
    attr_reader :empty
                :count
                :candies

    def initialize
        @empty = true
        @count = 0
        @candies = []
    end

    def empty?
        if @candies.empty?
            @empty
        else
            @empty = false
        end
    end

    def count
        @count = @candies.count
    end

    def candies
        @candies
    end

    def add_candy(candy)
        @candies << candy
    end

    def contains?(candy_type)
        @candies.any? do |candy|
            candy.type == candy_type
        end
    end
end
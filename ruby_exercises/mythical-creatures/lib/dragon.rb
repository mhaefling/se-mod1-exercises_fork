class Dragon
    attr_reader :name,
                :color,
                :rider

    def initialize(name, color, rider)
        @name = name
        @color = color
        @rider = rider
        @hungry = true
        @has_ate = 0
    end

    def hungry?
        @hungry
    end

    def eat
        @has_ate += 1
        if @has_ate == 3
            @hungry = false
        end
    end
end
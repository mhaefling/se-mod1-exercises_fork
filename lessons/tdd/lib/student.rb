class Student
    attr_reader :name,
                :mod,
                :skills

    def initialize(name, mod)
        @name = name
        @mod = mod
        @skills = []
    end
end
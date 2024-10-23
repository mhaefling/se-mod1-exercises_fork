class Wizard
    attr_reader :name,
                :bearded

    def initialize(name, bearded: true)
        @name = name
        :bearded
    end

    def bearded?
        :bearded
    end
end
class Pirate
    attr_reader :name,
                :job,
                :cursed,
                :booty

    def initialize(name, job = 'Scallywag')
        @name = name
        @job = job
        @cursed = false
        @heinous_act = 0
        @booty = 0
    end

    def commit_heinous_act
        @heinous_act += 1
        if @heinous_act == 3
            @cursed = true
        end
    end

    def cursed?
        @cursed
    end

    def rob_ship
        @booty += 100
    end
end
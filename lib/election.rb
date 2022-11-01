class Election
    attr_reader :year, :races, :candidates

    def initialize(year)
        @year = year
        @races = []
        @candidates = []
    end

    def add_race(race)
        @races << race
    end

    def register_candidate!(candidate)
        #want registered candidates as an array
        #same method from race class
        #getting undefined method for election.candidates unless i
        #define candidates as an empty array here too?
    end
end

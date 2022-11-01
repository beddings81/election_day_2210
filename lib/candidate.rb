class Candidate
    attr_reader :candidate, :votes

    def initialize(candidate)
        @candidate = candidate
        @votes = 0
    end

    def name
        candidate[:name]
    end

    def party
        candidate[:party]
    end

    def vote_for!
        @votes += 1
    end

end

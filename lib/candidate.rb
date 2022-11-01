class Candidate
    attr_reader :attributes, :votes, :name, :party

    def initialize(attributes)
        @attributes = attributes
        @votes = 0
        @name = attributes[:name]
        @party = attributes[:party]
    end

    def vote_for!
        @votes += 1
    end

end

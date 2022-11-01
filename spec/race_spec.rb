require './lib/candidate'
require './lib/race'

RSpec.describe Race do
    it 'exist' do
        race = Race.new("Texas Governor")

        expect(race).to be_a(Race)
    end

    it 'has an office' do
        race = Race.new("Texas Governor")

        expect(race.office).to eq("Texas Governor")
    end

    it 'can register candidates' do 
        race = Race.new("Texas Governor")
        # candidate1 = Candidate.new
        # candidate2 = Candidate.new({name: "Roberto R", party: :republican})
        expect(race.candidates).to eq([])
        candidate1 = race.register_candidate!({name: "Diana D", party: :democrat})
        expect(candidate1.class).to eq(Candidate)
        expect(candidate1.name).to eq("Diana D")
        candidate2 = race.register_candidate!({name: "Roberto R", party: :republican})
        expect(candidate2.class).to eq(Candidate)
        expect(race.candidates).to eq([candidate1, candidate2])
    end

    
end
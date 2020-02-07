require 'player'

describe Player do
  
  subject(:ryan) { Player.new('Ryan') }
  subject(:bob) { Player.new('Bob') }

    describe '#name' do 
      it 'returns a name' do
        expect(ryan.name).to eq 'Ryan'
      end
    end 

    describe '#hit_points' do
      it 'returns the hit points' do
        expect(ryan.hit_points).to eq described_class::DEFAULT_HIT_POINTS
      end
    end

    # describe '#attack' do
    #   it 'damages the player' do
    #     expect(bob).to receive(:receive_damage)
    #     ryan.attack(bob)
    #   end
    # end

    describe '#receive_damage' do
      it 'reduced the player hit points' do 
        expect { ryan.receive_damage }.to change { ryan.hit_points }.by(-10)
      end
    end
end
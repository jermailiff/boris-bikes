require 'docking_station'
require 'support/shared_examples_for_bike_container'

describe DockingStation do 
    it_behaves_like BikeContainer

    describe 'release_bike' do    
        it 'releases a working bike' do
            bike = double :bike, broken?: false
            subject.add_bike bike
            expect(subject.release_bike).to eq bike
        end
    end

end

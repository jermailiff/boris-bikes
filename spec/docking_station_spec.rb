require 'docking_station'
require 'support/shared_examples_for_bike_container'

describe DockingStation do 
    it_behaves_like BikeContainer

    describe 'release_bike' do    
        it 'releases a working bike' do
            bike = double :bike, broken?: false
            subject.dock bike
            expect(subject.release_bike).to eq bike
        end
    end

    describe 'release_broken_bike' do

        it 'raises error when bikes are not broken' do
            bike = double :bike, working?: true
            subject.dock bike
            expect{subject.release_broken_bike}.to raise_error 'Bike is not broken'
        end

        it 'releases broken bikes' do
            bike = double :bike, working?: false
            subject.dock bike
            expect(subject.release_broken_bike).to be bike
        end
    end


end

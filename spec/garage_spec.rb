require 'garage'


describe Garage do
    it_behaves_like BikeContainer

    describe 'fix_bikes' do    
        it 'fixes broken bikes' do
            bike = double :bike, broken?: true
            subject.accept bike
            expect(bike).to receive(:fix)
            subject.fix_bikes
        end
    end

    describe 'release_working_bike' do

        it 'releases only working bikes' do
            bike = double :bike, broken?: false
            subject.accept bike
            expect(subject.release_working_bike).to eq bike
        end
        
        it 'raises an error when bike is still broken' do
            bike = double :bike, broken?: true
            subject.accept bike
            expect{subject.release_working_bike}.to raise_error "#{described_class.name} cannot release broken bikes"
        end
    end

end
require 'garage'


describe 'Garage' do
    it_behaves_like BikeContainer

    describe 'fix_bikes' do    
        it 'fixes broken bikes' do
            bike = double :bike, broken?: true
            subject.add_bike bike
            expect(bike).to recieve(:fix)
            subject.fix_bikes
        end
    end


end
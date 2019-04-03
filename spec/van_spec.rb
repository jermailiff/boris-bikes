require 'van'

describe Van do
    
    it 'collects broken bikes' do
        bike = double(:bike, broken?: true)
        expect(subject.collect_bike(bike)).to eq [bike]
    end

    describe '#collect_bike(bike)' do
        it 'raises an error if the bike is not broken' do
            bike = double(:bike, working?: true)
            expect{subject.collect_bike bike}.to raise_error 'Bike is not broken'
        end
    end

end
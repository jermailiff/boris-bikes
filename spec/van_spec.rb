require 'van'

describe Van do
    
    it 'collects only broken bikes' do
        bike = double(:bike, broken?: true)
        expect(subject.collect(bike)).to eq [bike]
    end

    describe '#collect(bike)' do
        it 'raises an error if the bike is working' do
            bike = double(:bike, broken?: false)
            expect{subject.collect(bike)}.to raise_error 'Cannot collect working bikes'
        end
    end

    describe '#collect(bike)' do
        it 'raises an error once full' do
            bike = double(:bike, broken?: true)
            subject.capacity.times {subject.collect(bike)}
            expect{subject.collect(bike)}.to raise_error 'Van is full'
        end
    end

end

# can I make one test group with an assertion and exception instead of two?
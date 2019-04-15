shared_examples_for BikeContainer do
    it 'has a default capacity when initialized' do
        expect(subject.capacity).to eq BikeContainer::DEFAULT_CAPACITY
    end

    describe 'capacity' do
        it 'can be overrideen on initialize' do
            random_capacity = Random.ran(100)
            subject = described_class.new random_capacity
            expect(subject.capcity).to eq random_capacity
        end
    end
    
end

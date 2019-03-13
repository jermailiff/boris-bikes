require 'docking_Station'

describe DockingStation do 
    it { is_expected.to respond_to :release_bike }

    it 'has a capacity of 20 bikes' do
        expect(DockingStation::DEFAULT_CAPACITY).to eq 20
    end

    it 'capacity can be changed' do
        expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end 

    it 'releases working bikes' do
        bike = Bike.new
        subject.dock(bike)
        bike = subject.release_bike
        expect(bike).to be_working
    end

    it { is_expected.to respond_to(:dock).with(1).argument }

    it { is_expected.to respond_to(:bikes) }

    it 'returns docked bikes' do
        bike = Bike.new
        subject.dock(bike)
        expect(subject.bikes).to eq [bike]
    end

    describe '#release_bike' do
        it 'raises an error when there are no bikes available' do
            expect {subject.release_bike}.to raise_error 'No bikes available'
        end
    end

    describe '#dock' do
        it 'raises an error when full' do
            DockingStation::DEFAULT_CAPACITY.times do
                subject.dock Bike.new
            end
            expect {subject.dock Bike.new}.to raise_error 'Docking station full'
        end
    end
    

end

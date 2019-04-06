require 'docking_station'

describe DockingStation do 
    it { is_expected.to respond_to :release_bike }

    it 'has a default capacity of 20 bikes' do
        expect(DockingStation::DEFAULT_CAPACITY).to eq 20
    end

    it 'releases working bikes' do
        bike = double(:bike, broken?: false)
        subject.dock bike
        expect(subject.release_bike).to be bike
    end
        
    it { is_expected.to respond_to(:dock).with(1).argument }

    it { is_expected.to respond_to(:bikes) }

    it 'returns docked bikes' do
        bike = double :bike
        subject.dock bike
        expect(subject.bikes).to eq [bike]
    end

    describe 'initialization' do
        subject {DockingStation.new}
        let (:bike) {double :bike}
        it 'defaults capacity' do
            described_class::DEFAULT_CAPACITY.times do
                subject.dock bike
            end
            expect { subject.dock bike}.to raise_error 'Docking station full'
        end
    end

    describe '#release_bike' do
        it 'raises an error when there are no bikes available' do
            expect {subject.release_bike}.to raise_error 'No bikes available'
        end
    end

    describe '#release_bike' do
        it 'raises an error when broken bikes are docked' do
            bike = double(:bike, broken?: true)
            subject.dock bike 
            expect {subject.release_bike}.to raise_error 'Broken bikes unavailable'
        end
    end

    describe '#dock' do
        it 'raises an error when full' do
            bike = double :bike
            subject.capacity.times {subject.dock bike}
            expect {subject.dock bike}.to raise_error 'Docking station full'
        end
    end

end

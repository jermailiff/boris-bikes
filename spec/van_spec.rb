require 'van'

describe Van do
    
    it {is_expected.to respond_to(:collect).with(1).argument}

    describe '#collect(station)' do
        it 'raises an error if the bike is working' do
            station = DockingStation.new
            bike = double(:bike, broken?: false)
            station.dock bike
            expect{subject.collect(station)}.to raise_error 'Bikes working at station'
        end
    end

    # Need to figure out how to build test for van capacity
    describe '#collect(station)' do
        it 'raises an error once full' do
            station = DockingStation.new
            bike = double(:bike, broken?: true)
            station.capacity.times{
                station.dock bike
                subject.collect(station)
            }
            station.dock bike
            expect{subject.collect(station)}.to raise_error 'Van is full'
        end
    end

    it 'drops broken bikes to garages to get fixed' do
        station = DockingStation.new
        bike = double(:bike, broken?: true)
        station.dock bike
        subject.collect(station)
        expect{subject.drop_off(garage)}.to be bike
    end

end

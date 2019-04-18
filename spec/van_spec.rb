require 'van'

describe Van do
    
    it 'collects fixed bikes from garages' do
        bike_holder = Garage.new
        bike = double(:bike, broken?: false)
        bike_holder.bikes << bike
        expect(subject.collect_working_bikes(bike_holder)).to eq [bike]
    end

    describe '#collect_broken_bikes(bike_holder)' do
        it 'raises an error if the bike is working at station' do
            bike_holder = DockingStation.new
            bike = double(:bike, broken?: false)
            bike_holder.dock bike
            expect{subject.collect_broken_bikes(bike_holder)}.to raise_error "Bikes working at #{bike_holder}"
        end
    end

    describe '#collect_broken_bikes(bike_holder)' do
        it 'raises an error once full' do
            bike_holder = DockingStation.new
            bike = double(:bike, broken?: true)
            bike_holder.capacity.times{
                bike_holder.dock bike
                subject.collect_broken_bikes(bike_holder)
            }
            bike_holder.dock bike
            expect{subject.collect_broken_bikes(bike_holder)}.to raise_error "#{bike_holder} is full"
        end
    end

    it {is_expected.to respond_to(:drop_off).with(1).argument}

end

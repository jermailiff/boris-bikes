require 'van'

describe Van do
    
    it {is_expected.to respond_to(:collect).with(1).argument}

    describe '#collect(bike_holder)' do
        it 'raises an error if the bike is working' do
            bike_holder = DockingStation.new
            bike = double(:bike, broken?: false)
            bike_holder.dock bike
            expect{subject.collect(bike_holder)}.to raise_error 'Bikes working at #{bike_holder}'
        end
    end

    describe '#collect(bike_holder)' do
        it 'raises an error once full' do
            bike_holder = DockingStation.new
            bike = double(:bike, broken?: true)
            bike_holder.capacity.times{
                bike_holder.dock bike
                subject.collect(bike_holder)
            }
            bike_holder.dock bike
            expect{subject.collect(bike_holder)}.to raise_error 'Van is full'
        end
    end

    it 'drops broken bikes to garages to get fixed' do
        bike_holder = Garage.new
        bike = double(:bike, broken?: true)
        bike_holder.dock bike
        subject.collect(bike_holder)
        expect{subject.drop_off(bike_holder)}.to be bike
    end

end

require 'garage'

describe 'Garage' do
    it {is_expected.to respond_to(:fix_bikes)}

    it 'fixes broken bikes' do
        bike = double(:bikes, broken?: true)
        p subject
        subject.bikes << bike
        p subject.bikes
    end


end
require 'garage'

describe 'Garage' do
    subject {Garage.new}
    
    it {is_expected.to respond_to(:fix)}

    it 'fixes broken bikes' do
        subject.bikes << double(:bikes, broken: true)
        p subject.bikes
        expect(subject.fix).to be_falsey
    end


end
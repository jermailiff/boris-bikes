require 'garage'

describe 'Garage' do
    subject {Garage.new}
    let(:bike) { double('bike', 'broken' => [true, false]) }

    it {is_expected.to respond_to(:fix)}

    it 'fixes broken bikes' do
        subject.bikes << bike
        subject.fix
        expect{subject.bikes.to change('bike', 'broken'.from(true).to(false))}
    end


end
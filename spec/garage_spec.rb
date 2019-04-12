require 'garage'

describe 'Garage' do
    subject {Garage.new}
    let(:bike) { double('bike', 'broken=' => false, 'broken' => true) }

    it {is_expected.to respond_to(:fix)}

    it 'fixes broken bikes' do
        subject.bikes << bike
        p subject.bikes
        subject.fix
        bike1 = subject.bikes[0]
        expect(bike1.broken).to be_falsey
    end


end
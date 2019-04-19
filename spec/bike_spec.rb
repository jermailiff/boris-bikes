require 'bike'

describe Bike do
    it { is_expected.to respond_to :working? }

    it 'can be reported broken ' do
        subject.report_broken
        expect(subject.broken?).to be true
    end

    it 'can be fixed' do
        subject.fix
        expect(subject.broken?).to be false
    end
     
end

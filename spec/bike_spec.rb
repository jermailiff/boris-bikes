require 'bike'

describe Bike do
    it { is_expected.to respond_to :working? }

    describe '#working?' do
        it 'raises an error if the bike is broken' do 
            subject.report_broken
            expect {subject.working?}.to raise_error 'Bike is broken'
        end
    end 

    it 'can be reported broken ' do
        subject.report_broken
        expect(subject.broken?).to be true
    end

    it 'can be fixed' do
        subject.fix
        expect(subject.broken?).to be false
    end
     
end

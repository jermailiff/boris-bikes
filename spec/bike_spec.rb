require 'bike'

describe Bike do
    it { is_expected.to respond_to :working? }
end

    describe '#working?' do
        it 'raises an error if the bike is broken' do 
            subject.report_broken
            expect {subject.working}.to raise_error 'Bike is broken'
        end
    end 

    it 'can be reported broken ' do
        subject.report_broken
        expect(subject.broken?).to be_broken
    end

end
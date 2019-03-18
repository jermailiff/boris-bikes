require 'bike'

describe Bike do
    it { is_expected.to respond_to :working? }
end

it 'can be reported broken ' do
    subject.report_broken
    expect(subject.broken?).to be_broken
end

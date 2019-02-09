require 'formatter'

describe Formatter do
  subject(:formatter) { described_class.new }

  describe "#display_visits" do
    it "returns the number of visits" do
      expect { formatter.display_visits("/home", "2") }.to output("/home 2 visits\n").to_stdout
    end
  end
end

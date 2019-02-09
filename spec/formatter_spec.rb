require 'formatter'

describe Formatter do
  subject(:formatter) { described_class.new }

  describe "#printing_visits" do
    it "returns the number of visits" do
      expect { formatter.printing_visits("/home", "2") }.to output("/home 2 visits\n").to_stdout
    end
  end
end

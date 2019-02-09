require 'formatter'

describe Formatter do
  subject(:formatter) { described_class.new }

  describe "#display_visits" do
    it "returns the number of visits" do
      expect { formatter.display_visits("/home", "2") }.to output("/home 2 visits\n").to_stdout
    end
  end

  describe "#display_unique_views" do
    it "returns the number of unique views" do
      expect { formatter.display_unique_views("/index", 1) }.to output("/index 1 unique visit\n").to_stdout
    end
  end
end

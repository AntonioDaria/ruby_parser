require 'formatter'

describe Formatter do
  subject(:formatter) { described_class.new }

  describe "#display_visits" do
    it "returns the number of visits" do
      expect { formatter.display_visits("/home", "2") }.to output("The page /home has been visited 2 times\n").to_stdout
    end
  end

  describe "#display_unique_views" do
    it "returns the number of unique views" do
      expect { formatter.display_unique_views("/index", 1) }.to output("The page /index has received 1 unique visits\n").to_stdout
    end
  end
end

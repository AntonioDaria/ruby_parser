require 'formatter'

describe Formatter do

  describe "#display_visits" do
    it "returns the number of visits" do
      expect { subject.display_visits("/home", "2") }.to output("The page /home has been visited 2 times\n").to_stdout
    end
  end

  describe "#display_unique_views" do
    it "returns the number of unique views" do
      expect { subject.display_unique_views("/index", 1) }.to output("The page /index has received 1 unique visits\n").to_stdout
    end
  end
end

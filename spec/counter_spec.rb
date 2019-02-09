require 'counter'

describe Counter do
  subject(:counter) { described_class.new }

  describe "#store_pages" do
    it 'stores pages to a hash structure' do
      subject.store_pages("./mockedlog.log")
      expect(subject.visits).to eq({ "/about" => ["061.945.150.735"],
         "/about/2" => ["444.701.448.104"], "/contact" => ["184.123.665.067"], "/help_page/1" => ["126.318.035.038",\
         "929.398.951.889", "722.247.931.582", "646.865.545.408"],\
         "/home" => ["184.123.665.067", "235.313.352.950"],\
         "/index" => ["444.701.448.104"] })
    end
  end

  describe "#count_visits" do
    it 'returns an Arry data structure' do
      subject.store_pages("./mockedlog.log")
      expect(subject.count_visits).to be_a Array
    end

    it "orders the Array by most visits" do
      subject.store_pages("./mockedlog.log")
      expect(subject.count_visits.first[0]).to eq "/help_page/1"
    end
  end

  describe "#unique_visits" do
    it 'returns an Array data structure' do
      subject.store_pages("./mockedlog.log")
      expect(subject.unique_views).to be_a Array
    end

    it "orders the Array by most visits" do
      subject.store_pages("./mockedlog.log")
      expect(subject.unique_views.last[0]).to eq "/contact"
    end
  end

end

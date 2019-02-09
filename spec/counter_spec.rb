require 'counter'

describe Counter do
  subject(:counter) { described_class.new }

  describe "#store_pages" do
    it 'stores pages to a hash structure' do
    subject.store_pages("./mockedlog.log")
      expect(subject.web_pages).to eq({ "/about" => ["061.945.150.735"],
         "/about/2" => ["444.701.448.104"], "/contact" => ["184.123.665.067"], "/help_page/1" => ["126.318.035.038",\
         "929.398.951.889", "722.247.931.582", "646.865.545.408"],\
         "/home" => ["184.123.665.067", "235.313.352.950"],\
         "/index" => ["444.701.448.104"] })
    end
  end
end

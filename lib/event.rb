class ForexNews::Event

  attr_accessor :name, :impact, :time, :currency
  @@events = []

  def self.today

    self.scrape_deals

  end

  def self.scrape_deals
    doc = Nokogiri::HTML(open("http://www.forexfactory.com/"))
    #arytest = []
    checker = doc.css("tr.calendar_row")
    checker.each do |item|
      event = self.new
      event.name = item.css(".event").text

      event.impact = item.search(".impact span").attribute("title").text

      event.time = item.css(".time").text
      event.currency = item.css(".currency").text
      @@events << event
    end
    @@events.each do |event|
      if event.time == ""
        event.time = "Unspecified"
      end
    end
    @@events
  end

end

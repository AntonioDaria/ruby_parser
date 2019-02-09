class Counter
  attr_reader :web_pages

  def initialize
    @web_pages = {}
  end


  def store_pages(server_log)
    File.open(server_log).each do |log_rows|
      splitted_log_rows = log_rows.split(" ")
      if @web_pages.has_key?(splitted_log_rows[0])
       @web_pages[splitted_log_rows[0]] << (splitted_log_rows[1])
     else
       @web_pages[splitted_log_rows[0]] = [splitted_log_rows[1]]
     end
   end
  end

  def count_visits
    sorted_pages = @web_pages.sort_by { |key, value| value.length }.reverse
    sorted_pages.each do |views, visits|
       puts "#{views} #{visits.length} visits"
    end
  end

end

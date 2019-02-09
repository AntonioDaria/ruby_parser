class Counter
  attr_reader :visits

  def initialize
    @visits = {}
  end


  def store_pages(server_log)
    File.open(server_log).each do |log_rows|
      splitted_log_rows = log_rows.split(" ")
      if @visits.has_key?(splitted_log_rows[0])
       @visits[splitted_log_rows[0]] << (splitted_log_rows[1])
     else
       @visits[splitted_log_rows[0]] = [splitted_log_rows[1]]
     end
   end
  end

  def count_visits
    sorted_pages = @visits.sort_by { |key, value| value.length }.reverse
    sorted_pages.each do |views, visits|
       puts "#{views} #{visits.length} visits"
    end
  end

end

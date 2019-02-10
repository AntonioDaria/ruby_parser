module Formatter
  def self.display_visits(views, visits)
    puts "The page #{views} has been visited #{visits} times"
  end

  def self.display_unique_views(views, unique_visits)
    puts "The page #{views} has received #{unique_visits} unique visits"
  end
end

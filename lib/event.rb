class Event
  attr_accessor :start_date, :duration, :title, :attendees

  def initialize(start_date,duration,title,attendees)
    @attendees = []
    @start_date = Time.parse(start_date)
    @duration = duration
    @title = title
    @attendees = attendees
  end

  def postpone_24h
    @start_date = @start_date + 86400 #(24*60*60=86400)
  end

  def end_date
    return @start_date + (@duration * 60)
  end

  def is_past
   return @start_date < Time.now
 end

 def is_future
  return @start_date > Time.now
end

def is_soon
  return Time.now > (@start_date - 30*60)
end

def age_analysis
  age_array = []
  average = 0

  @attendees.each do |attendee|
    age_array << attendee.age
    average = average + attendee.age
  end

  average = average / @attendees.length

  puts "Voici les âges des participants :"
  puts age_array.join(",")
  puts "La moyenne d'âge est de #{average} ans."
end

def event_to_s
  puts "Event Title : #{@title}."
  puts "Start Date and Time : #{@start_date}."
  puts "Event Duration : #{@duration} minutes."
  print "Event attendees :"
  puts @attendees.join(",")
end

end

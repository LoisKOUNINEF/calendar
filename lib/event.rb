class Event
  attr_accessor :start_date, :duration, :title, :attendees

  def initialize(start_date,duration,title,attendees)
    @attendees = []
    @start_date = Time.parse(start_date)
    @duration = duration
    @title = title
    @attendees = attendees
    @end_date = @start_date + (@duration * 60)
  end

  def postpone_24h
    @start_date = @start_date + 86400 # ou @start_date += 24*60*60
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

  def event_to_s
    puts "Event Title : #{@title}."
    puts "Start Date and Time : #{@start_date}."
    puts "Event Duration : #{@duration} minutes."
    puts "End Date and Time : #{@end_date}."
    print [attendees].to_s.delete'"[]"'
  end

end

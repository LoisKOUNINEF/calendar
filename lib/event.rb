class Event
  attr_accessor :start_date
  attr_accessor :duration
  attr_accessor :title
  attr_accessor :attendees

  def initialize(start_date_input,duration_input,title_input,attendees_input)
    @start_date = Time.parse(start_date_input)
    @duration = duration_input.to_i
    @title = title_input
    @attendees = attendees_input.Array #faut rappeler user.email en écrivant le nom........mais comment?
  end

  def postpone_24h(start_date)
    @start_date + 86400
  end

  def end_date(start_date,duration)
    end_date = @start_date + @duration*60
  end

  def is_past?(start_date,)
     start_date < current_day?
  end

  def is_future?()
  end

  def is_soon?()
  end

  def event_to_s()
  end

end

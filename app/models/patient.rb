class Patient < ActiveRecord::Base
  attr_accessible 	:arrival_status, 
          					:arrival_time, 
          					:arrived, 
          					:copay_paid, 
                    :exit,
          					:insurance_verified, 
          					:language, 
          					:name, 
          					:physician, 
          					:registered, 
          					:scheduled_time,
                    :appointments_attributes

  has_many :appointments, dependent: :destroy

  accepts_nested_attributes_for :appointments

  before_save :status_calc

  def pretty_time(time_obj)
    DateTime.parse(time_obj.to_s).strftime("%H:%M")
  end

  def status_calc
    # Patient has arrived via params
    if self.arrived == true
      # Get the current day and time (d&t)
      #time_now = DateTime.now
      # Set the patiet arrival date and time to current (d&t)
      #self.update_attributes arrival_time: time_now
      # Calculate arrival_status time_diff
      time_diff = ((self.scheduled_time - self.arrival_time)/1.minute)
      # Set arrival status to time_diff
      self.arrival_status = time_diff

      if self.arrival_status > 0
        return "Early #{self.arrival_status} minutes"
      elsif self.arrival_status < 0
        return "Late #{self.arrival_status} minutes" 
      else
        return "Right on-time."
      end      
    else
      self.exit = false
      self.arrival_time = nil
      self.arrival_status = nil
    end
    
    # Return arrival_status
    return self.arrival_status
  end

end

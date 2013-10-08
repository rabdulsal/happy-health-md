class Appointment < ActiveRecord::Base
  attr_accessible 	:arrival_status, 
  					:arrived, 
  					:left, 
  					:patient_id,
  					:scheduled_date, 
  					:scheduled_time

	belongs_to :patient

end



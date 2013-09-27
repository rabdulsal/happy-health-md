class Patient < ActiveRecord::Base
  attr_accessible :arrival_status, :arrival_time, :arrived, :copay_paid, :insurance_verified, :language, :name, :physician, :registered, :scheduled_time
end

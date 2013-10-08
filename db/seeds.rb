# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Patient.destroy_all

doctor = "Dr. Haresh Sawlani"
f = false
t = true
e = "English"
s= "Spanish"
p = "Polish"


#Patient 1
Patient.create(	name: "Tammy Lee", 
				language: "English", 
				physician: doctor,
				scheduled_time: "2013-10-12 10:00:00",
				arrived: t,
				arrival_time: "2013-10-12 09:45:00",
				registered: f,
				insurance_verified: f,
				copay_paid: f,
				exit: f
				)

#Patient 2
Patient.create(	name: "John Doe", 
				language: "English", 
				physician: doctor,
				scheduled_time: "2013-10-12 10:15:00",
				arrived: t,
				arrival_time: "2013-10-12 10:25:00",
				registered: f,
				insurance_verified: f,
				copay_paid: f,
				exit: f
				)

#Patient 3
Patient.create(	name: "Jane Doe", 
				language: "English", 
				physician: doctor,
				scheduled_time: "2013-10-12 10:30:00",
				arrived: t,
				arrival_time: "2013-10-12 10:30:00",
				registered: f,
				insurance_verified: f,
				copay_paid: f,
				exit: f
				)

#Patient 4
Patient.create(	name: "Jack Doe", 
				language: "English", 
				physician: doctor,
				scheduled_time: "2013-10-12 10:45:00",
				arrived: t,
				arrival_time: "2013-10-12 10:50:00",
				registered: f,
				insurance_verified: f,
				copay_paid: f,
				exit: f
				)

#Patient 5
Patient.create(	name: "Jill Doe", 
				language: e, 
				physician: doctor,
				scheduled_time: "2013-10-12 11:00:00",
				arrived: f,
				registered: f,
				insurance_verified: f,
				copay_paid: f,
				exit: f
				)

#Patient 6
Patient.create(	name: "Josefina Doe", 
				language: s, 
				physician: doctor,
				scheduled_time: "2013-10-12 11:15:00",
				arrived: f,
				registered: f,
				insurance_verified: f,
				copay_paid: f,
				exit: f
				)

#Patient 7
Patient.create(	name: "Esmira Vasquez", 
				language: s, 
				physician: doctor,
				scheduled_time: "2013-10-12 11:30:00",
				arrived: f,
				registered: f,
				insurance_verified: f,
				copay_paid: f,
				exit: f
				)

#Patient 8
Patient.create(	name: "Jeff Doe", 
				language: e, 
				physician: doctor,
				scheduled_time: "2013-10-12 11:45:00",				
				arrived: f,
				registered: f,
				insurance_verified: f,
				copay_paid: f,
				exit: f
				)

puts "#{Patient.count} Patients added to database."

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
# t.text :name
# t.text :species
# t.text :breed
# t.float :height
# t.float :weight

#
# t.text :type
# t.text :last_date_administered
# t.text :interval

User.destroy_all
u1 = User.create :email => "cal1riv@gmail.com", :name => "Caleb"
u2 = User.create :email => "brontejeanrivers@gmail.com", :name => "Bronte"

Pet.destroy_all
p1 = Pet.create :name => "Rousey", :species => "Dog", :breed => "German Shepherd", :height => 52, :weight => 40

Appointment.destroy_all
a1 = Appointment.create :form_of => "Yearly shots", :last_date_administered => "01.01.2018", :interval => "1 Year"
#

u1.pets << p1

p1.appointments << a1

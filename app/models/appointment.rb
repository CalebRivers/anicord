# == Schema Information
#
# Table name: appointments
#
#  id                     :bigint(8)        not null, primary key
#  form_of                :text
#  last_date_administered :text
#  interval               :text
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class Appointment < ApplicationRecord
    belongs_to :pet, :optional => true
end

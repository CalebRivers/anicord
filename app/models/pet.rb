# == Schema Information
#
# Table name: pets
#
#  id         :bigint(8)        not null, primary key
#  name       :text
#  species    :text
#  breed      :text
#  height     :float
#  weight     :float
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Pet < ApplicationRecord
    belongs_to :user, :optional => true
    has_many :appointments
end

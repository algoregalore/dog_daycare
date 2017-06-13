# == Schema Information
#
# Table name: owners
#
#  id         :integer          not null, primary key
#  name       :string
#  phone      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Owner < ApplicationRecord
  has_many :dogs
  validates :name, presence: true, length: {minimum: 2}
end

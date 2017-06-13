# == Schema Information
#
# Table name: dogs
#
#  id         :integer          not null, primary key
#  name       :string
#  breed      :string
#  age        :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  owner_id   :integer
#

class Dog < ApplicationRecord
  belongs_to :owner
  validates :name, presence: true, length: {minimum: 3}
  validates :breed, presence: true, length: {minimum: 3}
  validates :owner, presence: true
end

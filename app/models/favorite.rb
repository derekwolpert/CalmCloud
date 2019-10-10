# == Schema Information
#
# Table name: favorites
#
#  id             :bigint           not null, primary key
#  favorited_type :string
#  favorited_id   :bigint
#  user_id        :bigint
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Favorite < ApplicationRecord
    belongs_to :favorited, polymorphic: true
    belongs_to :user
end

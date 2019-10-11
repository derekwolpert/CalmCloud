# == Schema Information
#
# Table name: subscriptions
#
#  id              :bigint           not null, primary key
#  user_id         :bigint
#  subscribed_type :string
#  subscribed_id   :bigint
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Subscription < ApplicationRecord
	belongs_to :user
	belongs_to :subscribed, polymorphic: true
end

# == Schema Information
#
# Table name: comments
#
#  id                :bigint           not null, primary key
#  track_id          :integer          not null
#  user_id           :integer          not null
#  parent_comment_id :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  body              :text             not null
#

class Comment < ApplicationRecord

    validates :track_id, :user_id, :body, presence: true
    validates :body, length: {maximum: 1000}

    belongs_to :user

    belongs_to :track

    belongs_to :parent_comment,
        primary_key: :id,
        foreign_key: :parent_comment_id,
        class_name: :Comment,
        optional: true

    has_many :child_comments,
        primary_key: :id,
        foreign_key: :parent_comment_id,
        class_name: :Comment
end

# == Schema Information
#
# Table name: tracks
#
#  id           :bigint           not null, primary key
#  user_id      :integer          not null
#  title        :string           not null
#  track_length :integer          not null
#  play_count   :integer          not null
#  description  :text             not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  tag_id       :integer
#

class Track < ApplicationRecord

    validates :user_id, :title, :track_length, :play_count, presence: true

    has_one_attached :audio_track
    has_one_attached :track_artwork

    after_initialize :ensure_play_count

    belongs_to :user,
        primary_key: :id,
        foreign_key: :user_id,
        class_name: :User

    has_many :favorites,
        primary_key: :id,
        foreign_key: :favorited_id,
        class_name: :Favorite,
        source_type: 'Track',
        dependent: :destroy

    has_many :user_favorites, 
        through: :favorites,
        source: :user
        
    # belongs_to :tag

    # has_many :comments

    def to_param
        title
    end

    def ensure_play_count
        self.play_count ||= 0
    end

end

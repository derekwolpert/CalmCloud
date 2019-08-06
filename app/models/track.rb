# == Schema Information
#
# Table name: tracks
#
#  id               :bigint           not null, primary key
#  user_id          :integer          not null
#  title            :string           not null
#  track_length     :integer          not null
#  play_count       :integer          not null
#  description      :text
#  background_color :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Track < ApplicationRecord

    validates :user_id, :title, :track_length, :play_count, presence: true

    has_one_attached :audio_track
    has_one_attached :track_artwork

    after_initialize :ensure_play_count, :ensure_play_count

    belongs_to :user,
        primary_key: :id,
        foreign_key: :user_id,
        class_name: :User

    def ensure_play_count
        self.play_count ||= 0
    end

    def ensure_play_count
        self.track_length ||= 60
    end

    def ensure_audio_track
        unless self.audio_track.attached?
            errors[:audio_track] << "Must be attached"
        end
    end

end

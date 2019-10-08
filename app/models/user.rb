# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  email           :string           not null
#  username        :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#  display_name    :string           not null
#  biography       :text
#  country         :string
#  city            :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
    validates :email, :username, uniqueness: true, presence: true, case_sensitive: false
    validates :session_token, uniqueness: true, presence: true
    validates :password, length: {minimum: 6}, allow_nil: true
    validates :biography, length: {maximum: 1000}, allow_nil: true
    validates :display_name, :password_digest, presence: true
    has_one_attached :profile_pic
    has_one_attached :profile_cover

    after_initialize :ensure_session_token, :ensure_display_name

    attr_reader :password

    # Tracks uploaded by user
    has_many :tracks,
        primary_key: :id,
        foreign_key: :user_id,
        class_name: :Track

    # all favorites, both favorited track and user subscriptions
    has_many :favorites,
        primary_key: :id,
        foreign_key: :user_id,
        class_name: :Favorite
    

    # all favorited tracks by user, through favorite model association
    has_many :favorite_tracks, 
        through: :favorites,
        source: :favorited,
        source_type: 'Track'

    # all user subscriptions by user, through favorites model association
    has_many :user_subscriptions, 
        through: :favorites,
        source: :favorited,
        source_type: 'User'

    has_many :subscribers,
        primary_key: :id,
        foreign_key: :favorited_id,
        class_name: :Favorite,
        dependent: :destroy


    has_many :user_subscribers, 
        through: :subscribers,
        source: :user

    # has_many :comments

    def to_param
        username
    end

    def self.find_by_username(username, password)
        user = User.find_by(username: username)
        return nil unless user && user.is_password?(password)
        user
    end

    def self.find_by_email(email, password)
        user = User.find_by(email: email)
        return nil unless user && user.is_password?(password)
        user
    end

    def password=(password)
        @password = password
        self.password_digest = BCrypt::Password.create(password)
    end

    def is_password?(password)
        bcrypt_p = BCrypt::Password.new(self.password_digest)
        bcrypt_p.is_password?(password)
    end

    def self.generate_session_token
        SecureRandom::urlsafe_base64
    end

    def ensure_session_token
        self.session_token ||= User.generate_session_token
    end

    def ensure_display_name
        self.display_name ||= self.username
    end

    def reset_session_token!
        self.update!(session_token: User.generate_session_token)
        self.session_token
    end
end

class User < ActiveRecord::Base
    has_many :leaderboards
    has_many :scores, through: :leaderboards


end
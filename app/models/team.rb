class Team < ActiveRecord::Base
  attr_accessible :user, :name, :team
  has_many :users
end

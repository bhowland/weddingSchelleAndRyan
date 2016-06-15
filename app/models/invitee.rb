class Invitee < ActiveRecord::Base
	validates :name_on_invite, presence: true, length: { minimum: 3, maximum: 30 }, uniqueness: true
	validates :invitees_present,presence: true, length: { minimum: 1, maximum: 3 }
	validates :plus_ones, length: { maximum: 2 }
	validates :dressed_in_garb, presence: true, length: { minimum: 1, maximum: 3 }
	validates :phone, presence: true, length: { minimum: 7, maximum: 11 }
	validates :email, length: { minimum: 4, maximum: 30 }





end

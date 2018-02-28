class Socialcampaign < ApplicationRecord
	   acts_as_votable
	   mount_uploader :image, AvatarUploader
	   validates :image, presence: true
	   validates :socialmedia_accounts, presence: true
	   
end

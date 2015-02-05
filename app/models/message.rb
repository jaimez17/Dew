class Message < ActiveRecord::Base
	Pusher.app_id = 105989
	Pusher.key = '50e2011e3d165efe89a1'
	Pusher.secret = 'c91981ab858acb4a8e9b'

	after_create :send_to_pusher

	def send_to_pusher
		logger.info "Hi_x?"
		Pusher['UPCChat2014'].trigger("message:create", self.to_json)
	end
end

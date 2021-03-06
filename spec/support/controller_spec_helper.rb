module ControllerSpecHelper
	#Generate token from user id
	def token_generator(user_id)
		JsonWebToken.encode(user_id: user_id)
	end

	#Generate expired token from user id

	def expired_token_generator(user_id)
		JsonWebToken.encode({ user_id: user_id}, (Time.now.to_i - 10 ))
	end

	#valid headers

	def valid_headers 
		{
			"Authorization" => token_generator(user.id),
			"Content-Type" => "application/json"
		}
	end

	#Invalid header

	def invalid_headers 
		{
			"Authorization" => nil,
			"Content-Type" => "application/json"
		}
	end
end
class Payment

	def request 
		uri = URI('http://vso17.cariba.ee/payments.json')
		http = Net::HTTP.new(uri.host, uri.port)
		req = Net::HTTP::Post.new(uri.path, 'Content-Type' => 'application/json')
		req.body = body.to_json
		res = http.request(req)
	end 

	def body
		{
			"amount":500,
			"sender_account": "Ilona.Acc",
			"recipient_name": "Ilona K",
			"recipient_account": "idk",
			"description": Event.third.name,
			"token": "2899cfab862af6858bb8c2eb174da0fe"
		}
	end


end

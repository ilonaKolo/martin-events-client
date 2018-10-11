class SendMail
	def send 
		from = SendGrid::Email.new(email: 'kool@khk.ee')
		to = SendGrid::Email.new(email: 'reppin.angel@mail.ee')
		subject = 'Tere!'
		content = SendGrid::Content.new(type: 'text/plain', value: 'Kuidas läheb?')
		mail = SendGrid::Mail.new(from, subject, to, content)

		sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
		response = sg.client.mail._('send').post(request_body: mail.to_json)
	end 
end


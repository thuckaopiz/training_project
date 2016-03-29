OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1529015500734437', 'b971230433c1ee33a045f321c2da4ecc', {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}
end

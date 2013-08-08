require File.join(File.dirname(__FILE__), '.', 'pagarme/model')
require File.join(File.dirname(__FILE__), '.', 'pagarme/transaction_common')
require File.join(File.dirname(__FILE__), '.', 'pagarme/subscription')
require File.join(File.dirname(__FILE__), '.', 'pagarme/transaction')
require File.join(File.dirname(__FILE__), '.', 'pagarme/plan')
require File.join(File.dirname(__FILE__), '.', 'pagarme/request')
require File.join(File.dirname(__FILE__), '.', 'pagarme/errors')

module PagarMe

  @@api_key = nil
  @@api_endpoint = 'https://0.0.0.0:3001'
  @@api_version = '1'
  @@live = true
  @@api_card_encryption_public_key = File.join(File.dirname(__FILE__), '..', 'certs/public_key.pem')

  def self.api_key=(api_key)
	@@api_key = api_key
  end

  def self.api_key
	@@api_key
  end

  def self.api_card_encryption_public_key
	@@api_card_encryption_public_key
  end

  def self.full_api_url(relative_path)
	"#{@@api_endpoint}/#{@@api_version}#{relative_path}"
  end

  def self.live
	@@live
  end

  def self.live=(live)
	@@live = live
  end

  # def self.request(method, url, parameters)
  # 	request_options = {
  # 		:method => method,
  # 		:url => self.full_api_url(url)
  # 		:headers => nil,
  # 		:open_timeout => 30,
  # 		:payload => payload,
  # 		:timeout => 80,
  # 	}
  # end

end

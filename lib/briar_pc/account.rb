# frozen_string_literal: true

module BriarPC
  class Account
    def initialize
      Net::HTTP.post_form(DEFAULT_ENDPOINT, 'account' => 'ruby', 'max' => '50') 
    end
  end
end

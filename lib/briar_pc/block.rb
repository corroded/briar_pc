# frozen_string_literal: true

require 'net/http'
require 'json'

module BriarPC
  DEFAULT_ENDPOINT = 'http://localhost:7076'

  class Block
    attr_reader :block_count, :endpoint

    def initialize
      @endpoint = URI(DEFAULT_ENDPOINT)
    end

    def get_block_count
      @block_count = ::Net::HTTP.post(
        endpoint,
        {'account' => 'block_count'}.to_json,
        'Content-Type' => 'application/json'
      )
    end
  end
end

# frozen_string_literal: true

module BriarPC
  class Block
    attr_reader :block_count, :endpoint

    def initialize
      @endpoint = URI(DEFAULT_ENDPOINT)
    end

    def block_count
      response = request_action('block_count')
      @block_count = JSON.parse(response.body)
    end

    private

    def request_action(action)
      ::Net::HTTP.post(
        endpoint,
        {'action': action}.to_json,
        'Content-Type' => 'application/json'
      )
    end
  end
end

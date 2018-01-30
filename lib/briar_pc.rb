# frozen_string_literal: true

require 'net/http'
require 'json'
require 'briar_pc/version'
require 'briar_pc/block'

module BriarPC
  DEFAULT_ENDPOINT = ENV['DEFAULT_ENDPOINT'] || 'http://localhost:7076'
end

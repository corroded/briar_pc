# frozen_string_literal: true

require 'spec_helper'

RSpec.describe BriarPC do
  it 'has a version number' do
    expect(BriarPC::VERSION).not_to be_nil
  end
end

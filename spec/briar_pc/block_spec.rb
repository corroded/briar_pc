# frozen_string_literal: true

require 'spec_helper'

RSpec.describe BriarPC::Block do
  subject(:block) { described_class.new }

  describe '#block_count' do
    subject(:block_count) { block.block_count }
    before do
      stub_request(:post, 'localhost:7076')
        .with(
          body: '{"action":"block_count"}',
          headers: { 'Content-Type': 'application/json' }
        )
        .to_return(body: '{
          "count": "5380847",
          "unchecked": "235"
        }')
    end

    let(:expected_value) do
      {
        'count' => '5380847',
        'unchecked' => '235'
      }
    end

    it do
      expect(block_count).to include expected_value
    end
  end
end

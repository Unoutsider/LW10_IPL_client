# frozen_string_literal: true

require 'rails_helper'

RSpec.describe SequencesController, type: :controller do
  describe 'different sidex' do
    it 'returns result in html' do
      get 'result', params: { num: '[1 2 3 4 2 3 5 4 6 7 4 8 9 2 2 4 6]', side: 'html' }
      expect(response.content_type).to eq('text/html; charset=utf-8')
    end

    it 'returns result in xml' do
      get 'result', params: { num: '[1 2 3 4 2 3 5 4 6 7 4 8 9 2 2 4 6]', side: 'xml' }
      expect(response.content_type).to eq('application/xml; charset=utf-8')
    end

    it 'returns result from server in xml' do
      get 'result', params: { num: '[1 2 3 4 2 3 5 4 6 7 4 8 9 2 2 4 6]', side: 'server' }
      expect(response.content_type).to eq('application/xml; charset=utf-8')
    end
  end
end

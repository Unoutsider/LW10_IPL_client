# frozen_string_literal: true

require 'test_helper'

class SequencesControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get sequences_index_url
    assert_response :success
  end

  test 'should get result' do
    get sequences_result_url
    assert_response :success
  end
end

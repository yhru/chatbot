# frozen_string_literal: true

require 'test_helper'

class ChatbotControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get chatbot_index_url
    assert_response :success
  end
end

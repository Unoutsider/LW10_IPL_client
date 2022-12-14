# frozen_string_literal: true

require 'nokogiri'
require 'open-uri'

# main controller
class SequencesController < ApplicationController
  include SequencesHelper
  before_action :correct_num, only: :result
  URL = 'http://localhost:3001/?format=xml'

  def index; end

  def result
    @number = params[:num].scan(/\d+/).map(&:to_i)

    redirect_to home_path unless flash.empty?
    return unless flash.empty?

    @side = params[:side]
    my_url = URL + "&num=#{@number}"
    server_response = URI.open(my_url)
    redirect_to home_path, alert: 'Выберите кнопку' if print_result(@side, server_response).nil?
  end
end

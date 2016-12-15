class FinanciacionsController < ApplicationController

  hobo_model_controller

  auto_actions :all

  def index
    token = params[:token] ? params[:token] : ""
    platform = params[:platform] ? params[:platform] : ""

    if token && platform
      # token and platform are required to add a device
      device = Pushbots::Device.new(token, platform)
      # register the device to pushbots returns true/false
      # an attempt to register a device
      # that has been already registered returns false
      device.register
    end
    hobo_index
  end



end

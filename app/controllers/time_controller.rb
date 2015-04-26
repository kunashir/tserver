require 'tzone'
class TimeController < ApplicationController
  def show
  	if params[:city]
  		cities = params[:city]
  	elsif params.keys.first != "controller"
  		cities = params.keys.first
  	end

  	render text: TZone.time_in_city(cities)
  end
end

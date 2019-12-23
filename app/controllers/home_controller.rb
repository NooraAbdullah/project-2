class HomeController < ApplicationController
  before_action :authenticate_user!
  def index 
      @user = current_user #after authenticate caus cannot get it without being signed
      @events = Event.all
  end
  # def events
  # end
end

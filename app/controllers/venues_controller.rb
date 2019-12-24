class VenuesController < ApplicationController
  # before_action :authenticate_user!, only: [:edit, :update, :destroy, :create, :new, :set_user_venues]
  # before_action :set_user_venues, only: [:edit, :update, :destroy, :new, :create]

  def index
    @venues = Venue.all
  end
  def show
    @venue = Venue.find(params[:id])
  end
end
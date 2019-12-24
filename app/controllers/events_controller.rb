class EventsController < ApplicationController
    before_action :authenticate_user!, only: [:edit, :update, :destroy, :create, :new, :set_user_events]
    before_action :set_user_events, only: [:edit, :update, :destroy, :new, :create]
    # GET /events
    # GET /events.json
    def index #/events
      @events = Event.all
    end
  
    # GET /events/1
    # GET /events/1.json
    def show
      @event = Event.find(params[:id])
    end
  
    # GET /events/new
    def new
      @event = @events.new
      @venues = Venue.all
    end
  
    # GET /events/1/edit
    def edit
      @event = @events.find(params[:id])
    end
  
    # POST /events
    # POST /events.json
    def create
  
      @event = @events.new(event_params)
      @event.venue_id = @event.venue_id.to_i
      puts @event
      respond_to do |format|
        if @event.save
          format.html { redirect_to @event, notice: 'Event was successfully created.' }
          format.json { render :show, status: :created, location: @event }
        else
          format.html { render :new }
          format.json { render json: @event.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PATCH/PUT /events/1
    # PATCH/PUT /events/1.json
    def update
      @event = @events.find(params[:id])
      respond_to do |format|
        if @event.update(event_params)
          format.html { redirect_to @event, notice: 'Event was successfully updated.' }
          format.json { render :show, status: :ok, location: @event }
        else
          format.html { render :edit }
          format.json { render json: @event.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /events/1
    # DELETE /events/1.json
    def destroy
      @event = @events.find(params[:id])
      @event.destroy
      respond_to do |format|
        format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_user_events
        @events = current_user.events
      end
      # Never trust parameters from the scary internet, only allow the white list through.
      def event_params
        params.require(:event).permit(:date, :venue_id, :type_of)
      end
end
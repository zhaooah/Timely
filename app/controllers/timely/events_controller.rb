require_dependency "timely/application_controller"
module Timely
  class EventsController < ApplicationController
    before_action :set_event, only: [:show, :edit, :update, :destroy]


    def list_events
    @events=Event.all

    end



    # GET /events
    def index

  @events = Event.all  
    #@events = @events.after(params['start']) if (params['start'])
   # @events = @events.before(params['end']) if (params['end'])
     events = []
      @events.each do |event|
        events << {:id => event.id, :title => event.title, :description => event.description || "Some cool description here...", :start => "#{event.start.iso8601}", :end => "#{event.end.iso8601}", :allDay => event.allDay ? true: false}
      end

      render :json => events.to_json






    end

    # GET /events/1
    def show
    end

    # GET /events/new
    def new
      @event = Event.new
    end

    # GET /events/1/edit
    def edit
    end

    # POST /events
    def create
      @event = Event.new(event_params)

      if @event.save
        redirect_to @event, notice: 'Event was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /events/1
    def update
      if @event.update(event_params)
        redirect_to @event, notice: 'Event was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /events/1
    def destroy
      @event.destroy
      redirect_to events_url, notice: 'Event was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_event
        @event = Event.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def event_params
        params.require(:event).permit(:title, :allDay, :start, :end, :className, :startEditable, :durationEditable, :description)
      end
  end
end

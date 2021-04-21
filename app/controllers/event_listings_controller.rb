class EventListingsController < ApplicationController

    def create 
        @event_listing = EventListing.create(user_id: params[:user_id], event_id: params[:event_id], saved: params[:saved] , seen: params[:seen] , booked: params[:booked])
        render json: @event_listing
    end

end

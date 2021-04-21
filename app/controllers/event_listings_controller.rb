class EventListingsController < ApplicationController

    def create 
        @event_listing = EventListing.find_or_create_by(user_id: params[:user_id], event_id: params[:event_id], saved: params[:saved] , seen: params[:seen] , booked: params[:booked])
        render json: @event_listing
    end

    # def update
    #     # @event_listing = EventListing.where(user_id: params[:user_id], event_id: params[:event_id])
    #     byebug
    #     # @event_listing.update()
    # end 

end

class EventListingsController < ApplicationController

    def create 
            # just do a create
            # if successfull render back your eventList
            # else
            # send back some error message 
    

       
            @event_listing = EventListing.find_or_create_by(user_id: params[:user_id], event_id: params[:event_id], saved: params[:saved], seen: params[:seen], booked: params[:booked])

            render json: @event_listing
    
    end

    def update
        @event_listing = EventListing.find(params[:id])
        @event_listing.update(update_params)
        render json: @event_listing
    end 

    private

    def update_params
        params.permit(:booked, :seen)
    end

end

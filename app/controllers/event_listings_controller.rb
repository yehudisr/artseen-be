class EventListingsController < ApplicationController

    def create 
           
            @event_listing = EventListing.create(user_id: params[:user_id], event_id: params[:event_id], saved: params[:saved], seen: params[:seen], booked: params[:booked])

            if @event_listing
                 render json: @event_listing 
            else
                render json: {errors: ["You already have this saved!"]}, status: :unauthorized
            end
    
    end

    def update
        @event_listing = EventListing.find(params[:id])
        @event_listing.update(update_params)
        render json: @event_listing
    end 

    def destroy 
        event_listing = EventListing.find(params[:id])
        event_listing.destroy
        render json: event_listing
    end

    private

    def update_params
        params.permit(:booked, :seen)
    end

end

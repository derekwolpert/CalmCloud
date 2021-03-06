class Api::TracksController < ApplicationController

    def create

        @track = Track.new(track_params)
        @track.user_id = current_user.id

        errs = ["placeholder error"]

        if @track.save
            render :show
        else
            render json: @track.errors.full_messages, status: 401
        end
        # Please choose an audio file (MP3, AAC, M4A, MP4 audio or OGG file types are supported) and make sure it is under 500MB.
        # Please enter a title below.
        # The file you've chosen is under 12MB - this indicates it may be short and, therefore, a single track and could be removed from Mixcloud.
    end

    def update
        @track = Track.includes(audio_track_attachment: :blob, track_artwork_attachment: :blob, user: [profile_pic_attachment: :blob]).find_by(title: params[:title])
        if @track && @track.user.username == params[:user_username]
            if @track.update_attributes(track_params)
                render :show
            end
        elsif !@track
            render json: ['Could not locate track'], status: 400
        else
            render json: @track.errors.full_messages, status: 401
        end
    end

    def index
        @tracks = Track.includes(audio_track_attachment: :blob, track_artwork_attachment: :blob, user: [profile_pic_attachment: :blob])
    end

    def show
        @track = Track.includes(:favorites, audio_track_attachment: :blob, track_artwork_attachment: :blob, user: [profile_pic_attachment: :blob, tracks: [track_artwork_attachment: :blob]], comments: [ user: [ profile_pic_attachment: :blob ] ],  ).find_by(title: params[:title])
        if @track && @track.user.username == params[:user_username]
            render :show
        elsif !@track
            render json: ['Could not locate track'], status: 400
        else
            render json: @track.errors.full_messages, status: 401
        end
    end

    def destroy
        @track = current_user.tracks.find(params[:id])
        if @track
            @track.destroy
            render json: params[:id]
        end
    end

    private

    def track_params
        params.require(:track).permit(:title, :audio_track, :track_artwork, :track_length, :description, :play_count)
    end

end
class Api::TracksController < ApplicationController

    def create

        @track = Track.new(track_params)
        @track.user_id = current_user.id

        errs = ["placeholder error"];

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
        @track = Track.find(params[:id])
        if @track && @track.update_attributes(track_params)
            render :show
        elsif !@track
            render json: ['Could not locate track'], status: 400
        else
            render json: @track.errors.full_messages, status: 401
        end
    end

    def index
        @tracks = Track.with_attached_audio_track.with_attached_track_artwork.includes(user: { profile_pic_attachment: :blob })
    end

    def show
        @track = Track.with_attached_audio_track.with_attached_track_artwork.includes(user: { profile_pic_attachment: :blob }).find(params[:id])
        @tracks = Track.with_attached_audio_track.with_attached_track_artwork.order(created_at: :DESC).where(["user_id = ? and id != ?", "#{@track.user_id}", "#{params[:id]}"]).take(3)
    end

    def destroy
        @track = current_user.tracks.find(params[:id])
        if @track
            @track.destroy
        end
    end

    private

    def track_params
        params.require(:track).permit(:title, :audio_track, :track_artwork, :track_length, :description, :play_count)
    end

end
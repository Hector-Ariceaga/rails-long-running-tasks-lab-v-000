class SongsController < ApplicationController
<<<<<<< HEAD
=======
  require 'csv'
>>>>>>> ae73324f38f08e7e6c2ceaa6b4b4bf6902b42be6

  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)

    if @song.save
      redirect_to @song
    else
      render :new
    end
  end

<<<<<<< HEAD
=======
  def upload
    CSV.foreach(params[:songs].path, headers: true) do |song|
      Song.create(title: song[0], artist_name: song[1])
    end
    redirect_to songs_path
  end

>>>>>>> ae73324f38f08e7e6c2ceaa6b4b4bf6902b42be6
  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])

    @song.update(song_params)

    if @song.save
      redirect_to @song
    else
      render :edit
    end
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    flash[:notice] = "Song deleted."
    redirect_to songs_path
  end

  private

  def song_params
    params.require(:song).permit(:title, :artist_name)
  end
end
<<<<<<< HEAD

=======
>>>>>>> ae73324f38f08e7e6c2ceaa6b4b4bf6902b42be6

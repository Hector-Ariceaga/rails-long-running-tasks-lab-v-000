require 'rails_helper'

RSpec.describe SongsController do
  describe "file upload" do
    before do
      Song.destroy_all
      Artist.destroy_all
    end

    it "uploads and processes a file" do
<<<<<<< HEAD
      post :upload, file: fixture_file_upload('songs.csv', 'text/csv')
=======
      post :upload, songs: fixture_file_upload('songs.csv', 'text/csv')
>>>>>>> ae73324f38f08e7e6c2ceaa6b4b4bf6902b42be6
      expect(Song.all.count).to eq 13
      expect(Artist.all.count).to eq 6
    end
  end
end

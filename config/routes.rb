Rails.application.routes.draw do
  resources :artists, :songs
<<<<<<< HEAD
=======
  post 'songs/upload', to: 'songs#upload'
>>>>>>> ae73324f38f08e7e6c2ceaa6b4b4bf6902b42be6
end

class Song < ActiveRecord::Base
  
  belongs_to :artist 
  belongs_to :genre 
  
  def song_artist_name=(name)
    self.artist = Artist.find_or_create_by(name: name)
  end 
  
  def song_artist_name
    self.artist ? self.artist.name : nil 
  end 
  
  def song_genre_id=(name)
    self.genre = Genre.find(genre_id)
  end 
  
  def song_genre_id
    self.genre ? self.genre.name : nil 
  end 
  
end

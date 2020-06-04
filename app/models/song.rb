class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
  	if self.artist.present?
	  	self.artist.name 
	end
  end

  def artist_name=(name)
  	if name.present?
	  	artist = Artist.find_or_create_by(name: name)
		self.update(artist: artist)
	end
  end
end

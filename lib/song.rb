 class Song
	attr_accessor :name, :artist

	def initialize(name)
		@name = name
	end

	def artist_name
		# artist = self.artist
		# if artist
		# 	return artist.name
		# else
		# 	return nil
		# end
		self.artist ? self.artist.name : nil
	end

end
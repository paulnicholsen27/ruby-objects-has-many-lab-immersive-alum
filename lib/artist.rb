require 'byebug'

class Artist
	attr_accessor :name, :songs

	@@song_count

	def initialize(name)
		@name = name
		@songs = []
		@@song_count = 0
	end

	def add_song_by_name(song_name)
		song = Song.new(name=song_name)
		self.add_song(song)
	end

	def add_song(song)
		song.artist = self
		@songs << song
		@@song_count += 1
	end

	def self.song_count
		all_songs = ObjectSpace.each_object(Song)
		all_songs.count
	end
end
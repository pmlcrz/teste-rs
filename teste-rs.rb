class User
    attr_accessor :username, :email, :password, :library
    
    def initialize(username, email, password)
      @username = username
      @email = email
      @password = password
      @library = Library.new
    end
  
    def add_song_to_library(song)
      @library.add_song(song)
    end
  
    def remove_song_from_library(song)
      @library.remove_song(song)
    end
  end
  
  class Song
    attr_accessor :title, :artist, :album, :genre, :url
    
    def initialize(title, artist, album, genre, url)
      @title = title
      @artist = artist
      @album = album
      @genre = genre
      @url = url
    end
  end
  
  class Library
    attr_accessor :songs
    
    def initialize
      @songs = []
    end
  
    def add_song(song)
      @songs << song
    end
  
    def remove_song(song)
      @songs.delete(song)
    end
  end
  
  class SocialNetwork
    attr_accessor :users, :songs
    
    def initialize
      @users = []
      @songs = []
    end
  
    def add_user(user)
      @users << user
    end
  
    def remove_user(user)
      @users.delete(user)
    end
  
    def add_song(song)
      @songs << song
    end
  
    def remove_song(song)
      @songs.delete(song)
    end
  end
  
require 'sqlite3'

# opens the database
database_path = File.join(File.dirname(__FILE__), 'db/jukebox.sqlite')
db = SQLite3::Database.new(database_path)

def detailed_tracks(db)
  # TODO: return the list of tracks with their album and artist
db.execute("SELECT Track.Name, Album.Title, Artist.Name
FROM Track
JOIN Album ON Track.AlbumId = Album.AlbumId
JOIN Artist ON Artist.ArtistId = Album.ArtistId;")
end


def stats_on(db, category)
  number = db.execute("SELECT count(Track.TrackId), avg(Track.Milliseconds)
    FROM Track
    JOIN Genre ON Track.GenreId = Genre.GenreId
    WHERE Genre.Name like '%#{category}%'")

  # Hash = {
  #     category => category,
  #     number_of_songs => number[0][0],
  #     avg_length => avg[0][1]
  #     }

  hash = {}

  hash[:category] = category
  hash[:number_of_songs] = number[0][0]
  hash[:avg_length] = number [0][1]

  return hash
  #TODO: For the given category of music, return the number of tracks and the average song length (as a stats hash)
end


def top_five_rock_artists(db)
  #TODO: return list of top 5 rock artists
   db.execute("SELECT Artist.Name, Count(Track.TrackId) AS nb_track
                FROM Artist
                JOIN Album ON Artist.ArtistId = Album.ArtistId
                JOIN Track ON Track.AlbumId = Album.ArtistId
                JOIN Genre ON Genre.GenreId = Track.GenreId
                WHERE Genre.Name like 'rock'
                GROUP BY Artist.Name
                ORDER BY nb_track DESC LIMIT 0,5")

end

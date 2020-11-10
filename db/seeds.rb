require 'rspotify'
require 'faker'

Artist.destroy_all
Album.destroy_all
Track.destroy_all
User.destroy_all
Review.destroy_all

# INITIALIZATION
$kanye = RSpotify::Artist.search('Kanye West')[0]
$kendrick = RSpotify::Artist.search('Kendrick Lamar')[0]
$jcole = RSpotify::Artist.search('J. Cole')[0]
$eminem = RSpotify::Artist.search('Eminem')[0]
$tyler = RSpotify::Artist.search('Tyler, the Creator')[0]
$travis = RSpotify::Artist.search('Travis Scott')[0]
$weeknd = RSpotify::Artist.search('The Weeknd')[0]
$drake = RSpotify::Artist.search('Drake')[0]
$bigsean = RSpotify::Artist.search('Big Sean')[0]
$postmalone = RSpotify::Artist.search('Post Malone')[0]
$pusha = RSpotify::Artist.search('Pusha T')[0]
$chance = RSpotify::Artist.search('Chance the Rapper')[0]
$frank = RSpotify::Artist.search('Frank Ocean')[0]
$khalid = RSpotify::Artist.search('Khalid')[0]
$rocky = RSpotify::Artist.search('A$AP Rocky')[0]
$jayz = RSpotify::Artist.search('Jay Z')[0]
$user_array = []


#ARTSIT SEEDS
$kanye_west = Artist.find_or_create_by(name: $kanye.name, genres: $kanye.genres.join(', '), popularity: $kanye.popularity, image: $kanye.images[0]["url"])
$kendrick_lamar = Artist.find_or_create_by(name: $kendrick.name, genres: $kendrick.genres.join(', '), popularity: $kendrick.popularity, image: $kendrick.images[0]["url"])
$j_cole = Artist.find_or_create_by(name: $jcole.name, genres: $jcole.genres.join(', '), popularity: $jcole.popularity, image: $jcole.images[0]["url"])
$eminem_artist = Artist.find_or_create_by(name: $eminem.name, genres: $eminem.genres.join(', '), popularity: $eminem.popularity, image: $eminem.images[0]["url"])
$tyler_artist = Artist.find_or_create_by(name: $tyler.name, genres: $tyler.genres.join(', '), popularity: $tyler.popularity, image: $tyler.images[0]["url"])
$travis_scott = Artist.find_or_create_by(name: $travis.name, genres: $travis.genres.join(', '), popularity: $travis.popularity, image: $travis.images[0]["url"])
$the_weeknd = Artist.find_or_create_by(name: $weeknd.name, genres: $weeknd.genres.join(', '), popularity: $weeknd.popularity, image: $weeknd.images[0]["url"])
$drake_artist = Artist.find_or_create_by(name: $drake.name, genres: $drake.genres.join(', '), popularity: $drake.popularity, image: $drake.images[0]["url"])
$big_sean = Artist.find_or_create_by(name: $bigsean.name, genres: $bigsean.genres.join(', '), popularity: $bigsean.popularity, image: $bigsean.images[0]["url"])
$post_malone = Artist.find_or_create_by(name: $postmalone.name, genres: $postmalone.genres.join(', '), popularity: $postmalone.popularity, image: $postmalone.images[0]["url"])
$pusha_t = Artist.find_or_create_by(name: $pusha.name, genres: $pusha.genres.join(', '), popularity: $pusha.popularity, image: $pusha.images[0]["url"])
$chance_the_rapper = Artist.find_or_create_by(name: $chance.name, genres: $chance.genres.join(', '), popularity: $chance.popularity, image: $chance.images[0]["url"])
$frank_ocean = Artist.find_or_create_by(name: $frank.name, genres: $frank.genres.join(', '), popularity: $frank.popularity, image: $frank.images[0]["url"])
$khalid_artist = Artist.find_or_create_by(name: $khalid.name, genres: $khalid.genres.join(', '), popularity: $khalid.popularity, image: $khalid.images[0]["url"])
$asap_rocky = Artist.find_or_create_by(name: $rocky.name, genres: $rocky.genres.join(', '), popularity: $rocky.popularity, image: $rocky.images[0]["url"])
$jay_z = Artist.find_or_create_by(name: $jayz.name, genres: $jayz.genres.join(', '), popularity: $jayz.popularity, image: $jayz.images[0]["url"])


# #ALBUM SEEDS
$tlop = Album.find_or_create_by(name: $kanye.albums.fourth.name, popularity: $kanye.albums.fourth.popularity, image: $kanye.albums.fourth.images[0]["url"], release_date: $kanye.albums.fourth.release_date)

$butterfly = Album.find_or_create_by(name: $kendrick.albums[10].name, popularity: $kendrick.albums[10].popularity, image: $kendrick.albums[10].images[0]["url"], release_date: $kendrick.albums[10].release_date)

$kod = Album.find_or_create_by(name: $jcole.albums.fifth.name, popularity: $jcole.albums.fifth.popularity, image: $jcole.albums.fifth.images[0]["url"], release_date: $jcole.albums.fifth.release_date)

$kamikaze = Album.find_or_create_by(name: $eminem.albums.third.name, popularity: $eminem.albums.third.popularity, image: $eminem.albums.third.images[0]["url"], release_date: $eminem.albums.third.release_date)

$igor = Album.find_or_create_by(name: $tyler.albums.first.name, popularity: $tyler.albums.first.popularity, image: $tyler.albums.first.images[0]["url"], release_date: $tyler.albums.first.release_date)

$astro = Album.find_or_create_by(name: $travis.albums.second.name, popularity: $travis.albums.second.popularity, image: $travis.albums.second.images[0]["url"], release_date: $travis.albums.second.release_date)

$starboy= Album.find_or_create_by(name: $weeknd.albums[6].name, popularity: $weeknd.albums[6].popularity, image: $weeknd.albums[6].images[0]["url"], release_date: $weeknd.albums[6].release_date)

$more_life = Album.find_or_create_by(name: $drake.albums[7].name, popularity: $drake.albums[7].popularity, image: $drake.albums[7].images[0]["url"], release_date: $drake.albums[7].release_date)

$bentleys = Album.find_or_create_by(name: $postmalone.albums.third.name, popularity: $postmalone.albums.third.popularity, image: $postmalone.albums.third.images[0]["url"], release_date: $postmalone.albums.third.release_date)

$daytona = Album.find_or_create_by(name: $pusha.albums.first.name, popularity: $pusha.albums.first.popularity, image: $pusha.albums.first.images[0]["url"], release_date: $pusha.albums.first.release_date)

$coloring_book = Album.find_or_create_by(name: $chance.albums.third.name, popularity: $chance.albums.third.popularity, image: $chance.albums.third.images[0]["url"], release_date: $chance.albums.third.release_date)

$blonde = Album.find_or_create_by(name: $frank.albums.first.name, popularity: $frank.albums.first.popularity, image: $frank.albums.first.images[0]["url"], release_date: $frank.albums.first.release_date)

$free_spirit = Album.find_or_create_by(name: $khalid.albums.first.name, popularity: $khalid.albums.first.popularity, image: $khalid.albums.first.images[0]["url"], release_date: $khalid.albums.first.release_date)

$testing = Album.find_or_create_by(name: $rocky.albums.first.name, popularity: $rocky.albums.first.popularity, image: $rocky.albums.first.images[0]["url"], release_date: $rocky.albums.first.release_date)

$throne = Album.find_or_create_by(name: $jayz.albums[1].name, popularity: $jayz.albums[1].popularity, image: $jayz.albums[1].images[0]["url"], release_date: $jayz.albums[1].release_date)

$decided = Album.find_or_create_by(name: $bigsean.albums[5].name, popularity: $bigsean.albums[5].popularity, image: $bigsean.albums[5].images[0]["url"], release_date: $bigsean.albums[5].release_date)

$album_array = [$tlop, $butterfly, $kod, $kamikaze, $igor, $astro, $starboy, $more_life, $bentleys, $daytona, $coloring_book, $blonde, $free_spirit, $testing, $throne, $decided]

# TRACK SEEDS

def tlop_tracks
    i = 0
    while i < 20
        Track.find_or_create_by(name: $kanye.albums.fourth.tracks[i].name, popularity: $kanye.albums.fourth.tracks[i].popularity, explicit: $kanye.albums.fourth.tracks[i].explicit, artist: $kanye_west, album: $tlop)
        i += 1
    end
end
tlop_tracks

def butterfly_tracks
    i = 0
    while i < 16
        Track.find_or_create_by(name: $kendrick.albums[10].tracks[i].name, popularity: $kendrick.albums[10].tracks[i].popularity, explicit: $kendrick.albums[10].tracks[i].explicit, artist: $kendrick_lamar, album: $butterfly)
        i += 1
    end
end
butterfly_tracks

def kod_tracks
    i = 0
    while i < 12
        Track.find_or_create_by(name: $jcole.albums.fifth.tracks[i].name, popularity: $jcole.albums.fifth.tracks[i].popularity, explicit: $jcole.albums.fifth.tracks[i].explicit, artist: $j_cole, album: $kod)
        i += 1
    end
end
kod_tracks

def kamikaze_tracks
    i = 0
    while i < 12
        Track.find_or_create_by(name: $eminem.albums.fourth.tracks[i].name, popularity: $eminem.albums.fourth.tracks[i].popularity, explicit: $eminem.albums.fourth.tracks[i].explicit, artist: $eminem_artist, album: $kamikaze)
        i += 1
    end
end
kamikaze_tracks

def igor_tracks
    i = 0
    while i < 12
        Track.find_or_create_by(name: $tyler.albums.first.tracks[i].name, popularity: $tyler.albums.first.tracks[i].popularity, explicit: $tyler.albums.first.tracks[i].explicit, artist: $tyler_artist, album: $igor)
        i += 1
    end
end
igor_tracks

def astro_tracks
    i = 0
    while i < 17
        Track.find_or_create_by(name: $travis.albums.second.tracks[i].name, popularity: $travis.albums.second.tracks[i].popularity, explicit: $travis.albums.second.tracks[i].explicit, artist: $travis_scott, album: $astro)
        i += 1
    end
end
astro_tracks

def starboy_tracks
    i = 0
    while i < 18
        Track.find_or_create_by(name: $weeknd.albums[6].tracks[i].name, popularity: $weeknd.albums[6].tracks[i].popularity, explicit: $weeknd.albums[6].tracks[i].explicit, artist: $the_weeknd, album: $starboy)
        i += 1
    end
end
starboy_tracks

def more_life_tracks
    i = 0
    while i < 22
        Track.find_or_create_by(name: $drake.albums[7].tracks[i].name, popularity: $drake.albums[7].tracks[i].popularity, explicit: $drake.albums[7].tracks[i].explicit, artist: $drake_artist, album: $more_life)
        i += 1
    end
end
more_life_tracks

def decided_tracks
    i = 0
    while i < 13
        Track.find_or_create_by(name: $bigsean.albums[5].tracks[i].name, popularity: $bigsean.albums[5].tracks[i].popularity, explicit: $bigsean.albums[5].tracks[i].explicit, artist: $big_sean, album: $decided)
        i += 1
    end
end
decided_tracks

def bentleys_tracks
    i = 0
    while i < 18
        Track.find_or_create_by(name: $postmalone.albums.third.tracks[i].name, popularity: $postmalone.albums.third.tracks[i].popularity, explicit: $postmalone.albums.third.tracks[i].explicit, artist: $post_malone, album: $bentleys)
        i += 1
    end
end
bentleys_tracks

def daytona_tracks
    i = 0
    while i < 7
        Track.find_or_create_by(name: $pusha.albums.first.tracks[i].name, popularity: $pusha.albums.first.tracks[i].popularity, explicit: $pusha.albums.first.tracks[i].explicit, artist: $pusha_t, album: $daytona)
        i += 1
    end
end
daytona_tracks

def coloring_book_tracks
    i = 0
    while i < 14
        Track.find_or_create_by(name: $chance.albums.third.tracks[i].name, popularity: $chance.albums.third.tracks[i].popularity, explicit: $chance.albums.third.tracks[i].explicit, artist: $chance_the_rapper, album: $coloring_book)
        i += 1
    end
end
coloring_book_tracks

def blonde_tracks
    i = 0
    while i < 17
        Track.find_or_create_by(name: $frank.albums.first.tracks[i].name, popularity: $frank.albums.first.tracks[i].popularity, explicit: $frank.albums.first.tracks[i].explicit, artist: $frank_ocean, album: $blonde)
        i += 1
    end
end
blonde_tracks

def free_spirit_tracks
    i = 0
    while i < 17
        Track.find_or_create_by(name: $khalid.albums.first.tracks[i].name, popularity: $khalid.albums.first.tracks[i].popularity, explicit: $khalid.albums.first.tracks[i].explicit, artist: $khalid_artist, album: $free_spirit)
        i += 1
    end
end
free_spirit_tracks

def testing_tracks
    i = 0
    while i < 15
        Track.find_or_create_by(name: $rocky.albums.first.tracks[i].name, popularity: $rocky.albums.first.tracks[i].popularity, explicit: $rocky.albums.first.tracks[i].explicit, artist: $asap_rocky, album: $testing)
        i += 1
    end
end
testing_tracks

def throne_tracks
    i = 0
    while i < 9
        Track.find_or_create_by(name: $jayz.albums[1].tracks[i].name, popularity: $jayz.albums[1].tracks[i].popularity, explicit: $jayz.albums[1].tracks[i].explicit, artist: $jay_z, album: $throne)
        i += 1
    end
end
throne_tracks

# USER SEEDS
def user_seeds
    m = 1
    a = 4
    n = 7
    3.times do
        $user_array.push(User.create!(username: "username#{m}", password: "1234", name: Faker::Name.name, email: Faker::Internet.email, image: "https://cdn.pixabay.com/photo/2017/06/13/12/53/profile-2398782_1280.png", badge: "Master"))
        m += 1
    end
    3.times do
        $user_array.push(User.create!(username: "username#{a}", password: "1234", name: Faker::Name.name, email: Faker::Internet.email, image: "https://cdn.pixabay.com/photo/2017/06/13/12/53/profile-2398782_1280.png", badge: "Advanced"))
        a += 1
    end
    4.times do
        $user_array.push(User.create!(username: "username#{n}", password: "1234", name: Faker::Name.name, email: Faker::Internet.email, image: "https://cdn.pixabay.com/photo/2017/06/13/12/53/profile-2398782_1280.png", badge: "Novice"))    
        n += 1
    end
end
user_seeds


# REVIEW SEEDS
def review_seeds
    u = 0
    while u < 10
        $album_array.each do |a|
            Review.create!(description: Faker::Lorem.paragraphs(number: 5), rating: Faker::Number.between(from: 1, to: 100), album: a, user: $user_array[u])
        end
        u += 1
    end
end
review_seeds


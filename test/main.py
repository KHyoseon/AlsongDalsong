import spotipy
import pandas as pd

from spotipy.oauth2 import SpotifyClientCredentials
client_credentials_manager = SpotifyClientCredentials(client_id='발급받은 아이디', client_secret='발급받은 비번')
sp = spotipy.Spotify(client_credentials_manager=client_credentials_manager)

artist_name =[]
track_name = []
track_popularity =[]
artist_id =[]
track_id =[]
for i in range(0,1000,50):
    track_results = sp.search(q='year:2021', type='track', limit=50, offset=i)
    for i, t in enumerate(track_results['tracks']['items']):
        artist_name.append(t['artists'][0]['name'])
        artist_id.append(t['artists'][0]['id'])
        track_name.append(t['name'])
        track_id.append(t['id'])
        track_popularity.append(t['popularity'])

track_df = pd.DataFrame({'artist_name' : artist_name, 'track_name' : track_name, 'track_id' : track_id, 'track_popularity' : track_popularity, 'artist_id' : artist_id})
print(track_df.shape)
track_df.head()

artist_popularity = []
artist_genres = []
artist_followers =[]
for a_id in track_df.artist_id:
    artist = sp.artist(a_id)
    artist_popularity.append(artist['popularity'])
    artist_genres.append(artist['genres'])
    artist_followers.append(artist['followers']['total'])

track_df = track_df.assign(artist_popularity=artist_popularity, artist_genres=artist_genres,
                           artist_followers=artist_followers)
track_df.head()
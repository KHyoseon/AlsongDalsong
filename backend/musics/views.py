from django.shortcuts import render
from rest_framework.response import Response
from .serializers import MusicSerializer

from musics.models import Music
from django.shortcuts import get_list_or_404 ,get_object_or_404
from rest_framework.decorators import api_view

# Create your views here.


@api_view(['GET'])
def get_one(request,music_id):
    music = get_object_or_404(Music, id=music_id)
    serializer = MusicSerializer(music)
    print(serializer.data)
    return Response(serializer.data)

@api_view(['GET'])
def get_all(request):
    musics = get_list_or_404(Music)
    serializer = MusicSerializer(musics, many=True)
    print(serializer.data)
    return Response(serializer.data)


@api_view(['POST'])
def favorite_music(request, music_id):
    music = get_object_or_404(Music, pk=music_id)
    user = request.user
    
    if music.like_users.filter(pk=user.pk).exists():
        music.like_users.remove(user)
        serializer = MusicSerializer(music)
        return Response(serializer.data)
    
    else:
        music.like_users.add(user)
        serializer = MusicSerializer(music)
        return Response(serializer.data)
    

@api_view(['GET', 'POST', 'PUT'])
def emotion_playlist(request, emotion):
    print(emotion)
    if request.method =='GET':
        playlist = Music.objects.filter(mood=emotion)
        playlist = get_list_or_404(Music, mood=emotion)
        playlist = playlist[:10]
        print(playlist)
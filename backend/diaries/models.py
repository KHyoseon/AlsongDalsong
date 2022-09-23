from django.db import models

# Create your models here.

class Diary(models.Model):
    user = models.ForeignKey("accounts.User", null=False, on_delete=models.CASCADE)
    title = models.CharField(null=False, max_length=176)
    content = models.TextField()
    emotion = models.CharField(max_length=50)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)


class Image(models.Model):
    diary = models.ForeignKey("diaries.Diary", null=False, on_delete=models.CASCADE)
    image_url = models.TextField(null=False)


class Bookmark(models.Model):
    user = models.ForeignKey("accounts.User", null=False, on_delete=models.CASCADE)
    diary = models.ForeignKey("diaries.Diary", null=False, on_delete=models.CASCADE)
    color = models.CharField(max_length=10)

    class Meta:
        constraints = [
            models.UniqueConstraint(fields=['user', 'diary'], name='unique_bookmark'),
        ]


class DiarySticker(models.Model):
    diary = models.ForeignKey("diaries.Diary", null=False, on_delete=models.CASCADE)
    sticker = models.ForeignKey("stickers.Sticker", null=False, on_delete=models.CASCADE)
    

class DiaryMusic(models.Model):
    diary = models.ForeignKey("diaries.Diary", null=False, on_delete=models.CASCADE)
    music = models.ForeignKey("musics.Music", null=False, on_delete=models.CASCADE)


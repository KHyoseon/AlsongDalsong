# Generated by Django 3.2 on 2022-09-28 12:54

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('stickers', '0003_alter_sticker_sticker_pack'),
    ]

    operations = [
        migrations.AddField(
            model_name='stickerpack',
            name='thumb_url',
            field=models.CharField(default='https://ssafy-d204-alsongdalsong.s3.ap-northeast-2.amazonaws.com/default_thumb.png', max_length=176),
        ),
    ]

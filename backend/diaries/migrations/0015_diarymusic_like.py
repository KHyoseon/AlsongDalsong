# Generated by Django 3.2 on 2022-09-27 04:52

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('diaries', '0014_auto_20220926_1617'),
    ]

    operations = [
        migrations.AddField(
            model_name='diarymusic',
            name='like',
            field=models.BooleanField(default=False),
        ),
    ]

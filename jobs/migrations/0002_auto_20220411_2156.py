# Generated by Django 3.1.3 on 2022-04-11 16:11

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('jobs', '0001_initial'),
    ]

    operations = [
        migrations.RenameField(
            model_name='job',
            old_name='email',
            new_name='company_email',
        ),
        migrations.RenameField(
            model_name='job',
            old_name='city',
            new_name='company_location',
        ),
        migrations.RenameField(
            model_name='job',
            old_name='name',
            new_name='company_name',
        ),
        migrations.RenameField(
            model_name='job',
            old_name='phone',
            new_name='company_phone',
        ),
    ]

# Generated by Django 3.0.5 on 2020-04-29 07:57

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('home', '0002_auto_20200429_0740'),
    ]

    operations = [
        migrations.CreateModel(
            name='CategoryBL',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=20)),
            ],
        ),
        migrations.CreateModel(
            name='Order',
            fields=[
                ('order_id', models.AutoField(primary_key=True, serialize=False)),
                ('user_id', models.IntegerField()),
                ('total', models.FloatField()),
                ('status', models.SmallIntegerField()),
                ('date_create', models.DateTimeField(null=True)),
            ],
            options={
                'db_table': 'tbl_Order',
            },
        ),
        migrations.CreateModel(
            name='OrderDetail',
            fields=[
                ('detail_id', models.AutoField(primary_key=True, serialize=False)),
                ('order_id', models.IntegerField()),
                ('pro_id', models.IntegerField()),
                ('pro_price', models.IntegerField()),
                ('pro_image', models.IntegerField()),
                ('Quanlity', models.IntegerField()),
                ('status', models.SmallIntegerField()),
                ('date_create', models.DateTimeField(null=True)),
            ],
            options={
                'db_table': 'tbl_OrderDetail',
            },
        ),
        migrations.CreateModel(
            name='Product',
            fields=[
                ('pro_id', models.AutoField(primary_key=True, serialize=False)),
                ('pro_name', models.CharField(max_length=50)),
                ('cat_id', models.IntegerField(choices=[(1, 'Cây trong nhà')])),
                ('pri_image', models.ImageField(max_length=255, upload_to='')),
                ('pro_price', models.FloatField()),
                ('description', models.TextField()),
                ('status', models.SmallIntegerField(choices=[(1, 'Hiển thị'), (0, 'Ẩn')])),
                ('date_create', models.DateField()),
            ],
            options={
                'db_table': 'tbl_Product',
            },
        ),
        migrations.CreateModel(
            name='PostView',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('post', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='home.Post')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.CreateModel(
            name='Comment',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('timestamp', models.DateTimeField(auto_now_add=True)),
                ('content', models.TextField()),
                ('post', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='comments', to='home.Post')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
    ]

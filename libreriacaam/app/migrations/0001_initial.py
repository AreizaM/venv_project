# Generated by Django 4.2.7 on 2023-12-06 20:36

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Autores',
            fields=[
                ('id_autor', models.AutoField(primary_key=True, serialize=False)),
                ('nombres', models.CharField(max_length=25)),
                ('apellidos', models.CharField(max_length=25)),
                ('estado', models.CharField(max_length=10)),
            ],
            options={
                'db_table': 'autores',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Categorias',
            fields=[
                ('id_categoria', models.AutoField(primary_key=True, serialize=False)),
                ('categoria', models.CharField(max_length=40)),
                ('estado', models.CharField(max_length=10)),
            ],
            options={
                'db_table': 'categorias',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Clientes',
            fields=[
                ('id_cliente', models.AutoField(primary_key=True, serialize=False)),
                ('identificacion', models.CharField(max_length=11)),
                ('nombres', models.CharField(max_length=25)),
                ('apellidos', models.CharField(max_length=25)),
                ('telefono', models.CharField(max_length=12)),
                ('direccion', models.CharField(blank=True, max_length=100, null=True)),
                ('correo_electronico', models.CharField(max_length=100)),
                ('estado', models.CharField(max_length=10)),
            ],
            options={
                'db_table': 'clientes',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Libros',
            fields=[
                ('isbn', models.IntegerField(primary_key=True, serialize=False)),
                ('titulo', models.CharField(max_length=125)),
                ('fecha_pub', models.DateField()),
                ('precio', models.IntegerField()),
                ('portada', models.CharField(blank=True, max_length=128, null=True)),
                ('cantidad_stock', models.IntegerField()),
                ('estado', models.CharField(max_length=10)),
            ],
            options={
                'db_table': 'libros',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='TblPedidoCliente',
            fields=[
                ('id_pedido', models.AutoField(primary_key=True, serialize=False)),
                ('nro_pedido', models.IntegerField()),
                ('fecha_pedido', models.DateField()),
                ('cantidad', models.IntegerField()),
                ('subtotal', models.IntegerField()),
                ('estado', models.CharField(max_length=10)),
            ],
            options={
                'db_table': 'tbl_pedido_cliente',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='LibroPorAutor',
            fields=[
                ('id_autor', models.OneToOneField(db_column='id_autor', on_delete=django.db.models.deletion.DO_NOTHING, primary_key=True, serialize=False, to='app.autores')),
                ('estado', models.CharField(max_length=10)),
            ],
            options={
                'db_table': 'libro_por_autor',
                'managed': False,
            },
        ),
    ]

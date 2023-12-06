from django.db import models


class Clientes(models.Model):
    id_cliente = models.AutoField(primary_key=True)
    identificacion = models.CharField(max_length=11)
    nombres = models.CharField(max_length=25)
    apellidos = models.CharField(max_length=25)
    telefono = models.CharField(max_length=12)
    direccion = models.CharField(max_length=100, blank=True, null=True)
    correo_electronico = models.CharField(max_length=100)
    estado = models.CharField(max_length=10)

    class Meta:
        managed = False
        db_table = 'clientes'


class Autores(models.Model):
    id_autor = models.AutoField(primary_key=True)
    nombres = models.CharField(max_length=25)
    apellidos = models.CharField(max_length=25)
    estado = models.CharField(max_length=10)

    class Meta:
        managed = False
        db_table = 'autores'


class Libros(models.Model):
    isbn = models.IntegerField(primary_key=True)
    titulo = models.CharField(max_length=125)
    fecha_pub = models.DateField()
    categoria = models.ForeignKey('Categorias', models.DO_NOTHING, db_column='categoria')
    precio = models.IntegerField()
    portada = models.CharField(max_length=128, blank=True, null=True)
    cantidad_stock = models.IntegerField()
    estado = models.CharField(max_length=10)

    class Meta:
        managed = False
        db_table = 'libros'


class Categorias(models.Model):
    id_categoria = models.AutoField(primary_key=True)
    categoria = models.CharField(max_length=40)
    estado = models.CharField(max_length=10)

    class Meta:
        managed = False
        db_table = 'categorias'


class LibroPorAutor(models.Model):
    id_autor = models.OneToOneField(Autores, models.DO_NOTHING, db_column='id_autor', primary_key=True)  # The composite primary key (id_autor, isbn) found, that is not supported. The first column is selected.
    isbn = models.ForeignKey(Libros, models.DO_NOTHING, db_column='isbn')
    estado = models.CharField(max_length=10)

    class Meta:
        managed = False
        db_table = 'libro_por_autor'
        unique_together = (('id_autor', 'isbn'),)


class TblPedidoCliente(models.Model):
    id_pedido = models.AutoField(primary_key=True)
    nro_pedido = models.IntegerField()
    id_cliente = models.ForeignKey(Clientes, models.DO_NOTHING, db_column='id_cliente')
    isbn = models.ForeignKey(Libros, models.DO_NOTHING, db_column='isbn')
    fecha_pedido = models.DateField()
    cantidad = models.IntegerField()
    subtotal = models.IntegerField()
    estado = models.CharField(max_length=10)

    class Meta:
        managed = False
        db_table = 'tbl_pedido_cliente'
